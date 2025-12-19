# IP Shield Policy

## Scope
- Applies to all inputs, outputs, and persisted artifacts processed through the platform.
- Focuses on preventing leakage of confidential logic, datasets, secrets, and any sealed design rationale.

## Access Labels
- **Public:** Content that is safe to disclose externally without restriction.
- **Internal:** Operational guidance and non-sensitive metadata meant only for trusted operators and systems.
- **Sealed:** Confidential, restricted details that must not be exposed (e.g., secrets, proprietary logic descriptions, unpublished research notes).

## Handling Rules
- Default classification is **Sealed** unless explicitly downgraded.
- Public responses must exclude sealed content and minimize internal metadata.
- Internal disclosures must include only the minimum necessary detail to serve the request.
- Sealed content is never emitted; references are abstracted or redacted.

## Redaction & Refusal
- If a request could expose sealed material, respond with a refusal plus a safe redirect to public guidance.
- Redact identifiers, unique tokens, and any descriptions that reveal restricted mechanisms.
- Avoid step-by-step operational detail beyond high-level process summaries.

## Logging & Review
- Log gate decisions: request summary, label applied, refusal/redaction path chosen, and timestamp.
- Escalate unclear cases for manual review; do not auto-downgrade classification.
- Periodically review refusals and redactions to tighten patterns and reduce ambiguity.

## Change Control
- Any expansion of disclosure scope requires explicit approval and policy versioning.
