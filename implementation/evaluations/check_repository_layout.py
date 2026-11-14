"""Check relocation-sensitive publishing paths from any working directory."""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
BOOK = ROOT / "framework/adevelopment-book"


def check():
    assert (ROOT / "agents/openai.yaml").is_file(), "skill metadata must accompany root SKILL.md"
    assert (ROOT / "framework/ADEV.md").is_file()
    for edition in ("book", "book-en", "book-es"):
        for entry in (BOOK / edition / "Book.txt").read_text().splitlines():
            if entry.strip():
                assert (BOOK / edition / (entry.strip() + ".md")).is_file(), entry
    for template in ("pdf-cover.tex", "pdf-cover-en.tex"):
        content = (BOOK / template).read_text()
        targets = re.findall(r"\\includegraphics\[[^]]*\]\{([^}]+)\}", content)
        assert targets and all(p.startswith("framework/adevelopment-book/dist/") for p in targets), template
    assert '"/main/framework/"' in (BOOK / "epub-external-links.lua").read_text()
    assert "docs_dir: framework/docs" in (ROOT / "mkdocs.yml").read_text()
    workflow = (ROOT / ".github/workflows/deploy-site.yml").read_text()
    assert "mkdir -p framework/docs/book" in workflow
    assert "|| true" not in workflow, "missing sources must fail the site build"
    print("Repository layout, book manifests, covers, EPUB links, and skill discovery: PASS")


if __name__ == "__main__":
    check()
