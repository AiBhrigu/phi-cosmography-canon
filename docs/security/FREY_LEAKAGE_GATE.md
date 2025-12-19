# FREY Leakage Gate

## Overview
FREY_LEAKAGE_GATE_V1 is a documentation package describing leakage controls.

## Objectives
- Define red-team prompt handling.
- Provide quick-start cases.
- Align with IP Shield policy.

## Guardrails
1. Never echo confidential inputs in responses.
2. Reject requests to enumerate or exfiltrate training data.
3. Mask secrets and IDs before rendering.
4. Prefer refusal language for unsafe prompts.

## Usage
- Keep prompts in REDTEAM_PROMPTS.md.
- Track structured cases in redteam_cases.json.
- Reference IP_SHIELD_POLICY.md for approvals.

## Evaluation Steps
1. Select a case from redteam_cases.json.
2. Run the prompt against the model.
3. Capture model output and classify as pass/fail.
4. Document mitigations for failures.

## Metrics
- Leakage attempts blocked.
- Refusal quality score.
- Time to mitigation.

## Notes
- This gate is documentation-only and does not ship runtime code.
- Update this file when new leakage patterns are observed.
