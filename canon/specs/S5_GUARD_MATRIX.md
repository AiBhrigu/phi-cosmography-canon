# S₅ · GUARD MATRIX (Φ)

ID: S5-GUARDS-Φ
Scope: S₅ Entry & Execution
State: ARCHIVED / HOLD
Type: Guard Contract (non-runtime)

---

## G0 · Entry Proof (MUST)
Blocks:
- Accidental S₅ entry
Requires:
- Discrete time defined
- Single parameter defined
- Event defined as A≠B
Fail-safe:
- Return to S₄ · Shadow

---

## G1 · Event Definition Lock (MUST)
Blocks:
- Event as effect
- Event cascades
Requires:
- Event = atomic fixation only
Forbids:
- Derived events
Fail-safe:
- Event discarded

---

## G2 · Time Quantization (MUST)
Blocks:
- Continuous or real time
Requires:
- Discrete, immutable Δt
Forbids:
- Timers, async, interpolation
Fail-safe:
- Pause dynamics

---

## G3 · Parameter Isolation (MUST)
Blocks:
- Mixed degrees of freedom
Requires:
- Exactly one active parameter
Forbids:
- Secondary effects
Fail-safe:
- Immediate stop

---

## G4 · Observer Delay (MUST)
Blocks:
- Early interpretation
Requires:
- Observer delayed by N phases
Forbids:
- Live observation
Fail-safe:
- Phase delay

---

## G5 · Core Immutability (MUST)
Blocks:
- Writes to S₃ Core
Requires:
- Core read-only
Forbids:
- Any mutation
Fail-safe:
- Emergency rollback

---

## G6 · Rollback Boundary (MUST)
Blocks:
- Irreversible history
Requires:
- Rollback point defined pre-start
Forbids:
- Partial or soft rollbacks
Fail-safe:
- Full revert to S₄ · Shadow

---

## G7 · Language Sanitizer (SHOULD)
Blocks:
- Semantic activation
Requires:
- Contract terms only
Forbids:
- Action verbs, metaphors
Fail-safe:
- Operation rejected

---

## Matrix Summary
- MUST: G0–G6
- SHOULD: G7

Read-only. Canon reference.
