# EXIT PROTOCOL · S-LINE (Φ)

ID: S-LINE-EXIT-Φ
Scope: Post-Archive Control
State: ARCHIVED / HOLD
Type: Exit & Transition Protocol (non-runtime)

---

## Allowed Exits (Explicit Only)

The system may transition ONLY by one of the following explicit commands:

- new-cycle
- S5-entry
- hold

No other transitions are valid.

---

## Forbidden Actions

The following actions are strictly forbidden while ARCHIVED / HOLD:

- Any activation (light, time, events)
- Any runtime execution
- Any modification of canonical documents
- Any partial tests or “just checking”
- Any interpretation implying control

---

## Violation Definition

A violation is any action that:
- alters S₃ Core
- introduces time or events
- bypasses guards G0–G6
- uses non-contract language to imply action

Violations invalidate the archive.

---

## Recovery

In case of violation:
- Immediate stop
- Full rollback to S₄ · Shadow
- Re-entry only via explicit protocol

---

## Authority

This protocol governs all post-archive behavior.
No implicit exits are permitted.

Read-only. Canon reference.
