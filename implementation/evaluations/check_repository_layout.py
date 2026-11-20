"""Check relocation-sensitive repository paths from any working directory."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def check():
    assert (ROOT / "agents/openai.yaml").is_file(), "skill metadata must accompany root SKILL.md"
    assert (ROOT / "framework/ADEV.md").is_file()
    assert not (ROOT / "framework/adevelopment-book").exists(), "the book lives in the adev-book repository"
    assert "docs_dir: framework/docs" in (ROOT / "mkdocs.yml").read_text()
    workflow = (ROOT / ".github/workflows/deploy-site.yml").read_text()
    assert "mkdocs build --strict" in workflow, "broken site links must fail the build"
    assert "|| true" not in workflow, "missing sources must fail the site build"
    print("Repository layout, site build, and skill discovery: PASS")


if __name__ == "__main__":
    check()
