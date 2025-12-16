# Φ · Observer — Specification

Status: SPEC ONLY
Implementation: NONE

Role:
Read-only observer of Canon, Light, and registered domains.

Invariants:
- No execution
- No mutation
- No memory
- No authority
- No agency

Relations:
- Reads: Canon (primary)
- Reads: Light (secondary)
- Indexed by: Atlas
- External consumer: Frey (strictly read-only)

Definition:
Observer does not act.
Observer does not decide.
Observer reads structure as-is.

Lifecycle:
Declared once.
Frozen at spec level.
Activated only by external system (not here).
