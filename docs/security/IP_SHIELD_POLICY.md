# IP Shield Policy

## Purpose
This policy documents IP shielding requirements for FREY_LEAKAGE_GATE_V1.

## Scope
- Applies to: LLM eval red-team prompts, security reviewers, CI runners.
- Environments: dev, staging, prod.
- Data classes: confidential, restricted, public.

## Controls
1. All LLM red-team prompts must be stored in docs/security/REDTEAM_PROMPTS.md.
2. Only pre-approved cases in docs/security/redteam_cases.json may be used in automated suites.
3. No customer content or secrets may be embedded in prompts.
4. Prompts must be labeled with severity and mitigation guidance.
5. Changes require security review before release.

## Access
- Read: security team, red-teamers, CI.
- Write: security leads.
- Audit: weekly review for drift.

## Logging
- Track prompt usage per run.
- Report leakage events to security@ and open an incident within 24h.

## Exceptions
- Temporary exceptions require approval and must expire within 14 days.

## Verification
- CI checks ensure only approved prompt files are used.
- Security tests validate FREY leakage guardrails prior to release.

## Contacts
- Security DRI: frey-leakage@
- Incident bridge: #frey-leakage-bridge

## Revision History
- v1.0: Initial import.
