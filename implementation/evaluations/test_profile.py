"""Structural conformance only; these tests do not certify runtime behavior."""
import copy
import json
from pathlib import Path
import unittest

import jsonschema
import yaml

ROOT = Path(__file__).resolve().parents[2]
SCHEMA = json.loads((ROOT / "implementation/contracts/agent-profile.schema.json").read_text())
PROFILE = yaml.safe_load((ROOT / "implementation/profiles/ai-sdlc.yaml").read_text())


class ProfileTests(unittest.TestCase):
    def test_reference_profile(self):
        jsonschema.Draft202012Validator.check_schema(SCHEMA)
        jsonschema.validate(PROFILE, SCHEMA)

    def test_missing_required_sections(self):
        for field in SCHEMA["required"]:
            with self.subTest(field=field):
                profile = copy.deepcopy(PROFILE)
                del profile[field]
                with self.assertRaises(jsonschema.ValidationError):
                    jsonschema.validate(profile, SCHEMA)

    def test_unknown_nested_keys_rejected(self):
        for section in ("knowledge", "policy", "success", "components"):
            with self.subTest(section=section):
                profile = copy.deepcopy(PROFILE)
                profile[section]["unexpected_permission"] = True
                with self.assertRaises(jsonschema.ValidationError):
                    jsonschema.validate(profile, SCHEMA)

    def test_fail_open_policy_rejected(self):
        profile = copy.deepcopy(PROFILE)
        profile["policy"]["fail_closed"] = False
        with self.assertRaises(jsonschema.ValidationError):
            jsonschema.validate(profile, SCHEMA)

    def test_empty_criteria_rejected(self):
        for criteria in ([], [""], [42]):
            with self.subTest(criteria=criteria):
                profile = copy.deepcopy(PROFILE)
                profile["success"]["acceptance_criteria"] = criteria
                with self.assertRaises(jsonschema.ValidationError):
                    jsonschema.validate(profile, SCHEMA)


if __name__ == "__main__":
    unittest.main()
