"""Check repository layout and relative Markdown links from any working directory."""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
REQUIRED = [
    "ADEV.md", "README.md", "AGENTS.md", "SKILL.md", "agents/openai.yaml",
    "hardness/README.md", "overlays/README.md", "practices/README.md",
    "practices/delivery-defaults.md", "implementation/README.md",
    "starter-kit/README.md", "docs/index.md", "docs/rule-migration-map.md",
    "profiles/README.md", "profiles/guided.md", "profiles/standard.md", "profiles/autonomous.md",
    "install/install.sh", "install/bootstrap.sh", "install/Install-ADev.ps1",
    "starter-kit/personal-overlay/SKILL.md", "patterns/README.md",
]


def slug(heading):
    heading = re.sub(r"[`*_\[\]()]", "", heading.strip().lower())
    heading = re.sub(r"[^\w\s-]", "", heading)
    return re.sub(r"\s", "-", heading)


def check_links():
    problems = []
    anchors = {}
    for md in ROOT.rglob("*.md"):
        if {".git", "site", "site-src"} & set(md.relative_to(ROOT).parts):
            continue
        text = re.sub(r"```.*?```", "", md.read_text(), flags=re.S)
        for target in re.findall(r"\]\(([^)\s]+)\)", text):
            if re.match(r"^[a-z]+:", target):
                continue
            path, _, anchor = target.partition("#")
            dest = (md.parent / path).resolve() if path else md
            if not dest.exists():
                problems.append(f"{md.relative_to(ROOT)} -> {target}")
            elif anchor and dest.suffix == ".md":
                if dest not in anchors:
                    anchors[dest] = {slug(h) for h in re.findall(r"^#+\s+(.*)$", dest.read_text(), re.M)}
                if anchor not in anchors[dest]:
                    problems.append(f"{md.relative_to(ROOT)} -> {target} (anchor)")
    assert not problems, "broken links:\n" + "\n".join(problems)


def check():
    for path in REQUIRED:
        assert (ROOT / path).is_file(), f"missing {path}"
    assert not (ROOT / "framework/adevelopment-book").exists(), "the book lives in the adev-book repository"
    assert "docs_dir: site-src" in (ROOT / "mkdocs.yml").read_text()
    workflow = (ROOT / ".github/workflows/deploy-site.yml").read_text()
    assert "mkdocs build --strict" in workflow, "broken site links must fail the build"
    assert "git ls-files" in workflow, "the site is staged from tracked files"
    assert "|| true" not in workflow, "missing sources must fail the site build"
    check_links()
    print("Repository layout, relative links and anchors, site build, and skill discovery: PASS")


if __name__ == "__main__":
    check()
