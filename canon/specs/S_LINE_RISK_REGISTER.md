# S-LINE · RISK REGISTER (Φ)

ID: S-LINE-RISK-Φ
Scope: S₃ → S₇
State: ARCHIVED / HOLD
Type: Architectural Risk Register (non-runtime)

---

## R1 · Core Mutability (FATAL)
Trigger:
- Any write to S₃ Core
Impact:
- Loss of invariant
- No rollback possible
Guard:
- G5 · Core Immutability
Status:
- CLOSED

---

## R2 · Mixed Degrees of Freedom (FATAL)
Trigger:
- More than one active parameter
Impact:
- Layer skip
- Uncontrolled S₅ → S₆
Guard:
- G3 · Parameter Isolation
Status:
- CLOSED

---

## R3 · Rollback Loss (FATAL)
Trigger:
- Dynamics without predefined rollback
Impact:
- Irreversible history
Guard:
- G6 · Rollback Boundary
Status:
- CLOSED

---

## R4 · Time Misuse (HIGH)
Trigger:
- Real time
- Async timers
- Variable Δt
Impact:
- Pseudo-flow
- Cascades
Guard:
- G2 · Time Quantization
Status:
- CONTROLLED

---

## R5 · Event Cascades (HIGH)
Trigger:
- One event causes another
Impact:
- Exponential dynamics
Guard:
- G1 · Event Definition Lock
Status:
- CONTROLLED

---

## R6 · Operator Error (MED-HIGH)
Trigger:
- Parallel contexts
- Partial runs
- “Just checking”
Impact:
- Premature activation
- Contamination
Guard:
- HOLD protocol
Status:
- CONTROLLED

---

## R7 · Language Activation (FATAL)
Trigger:
- Action verbs
- Metaphors implying effect
Impact:
- Observer becomes agent
Guard:
- G7 · Language Sanitizer
Status:
- CLOSED

---

## R8 · Cognitive Overconfidence (MED)
Trigger:
- Rush
- Assumed understanding
Impact:
- Φ-sequence violation
Guard:
- HOLD
Status:
- CONTROLLED

---

## Summary
- All fatal risks are CLOSED.
- Procedural risks are CONTROLLED.
- Cognitive risks are MITIGATED.

Read-only. Canon reference.

---

## RISK · COSMO-REPOS-SPRAWL · Repo sprawl / style drift (Surface)
**Problem:** параллельные Cosmography-репо + множественные версии CSS + backup-папки → дрейф стилей, трудно понять “истину”.
**Signals observed:** `phi-cosmography-open` содержит много версий `phi_*_vXX.css` и `_backup_*`; отдельный `phi-cosmography-light` живёт своей жизнью.
**Impact:** случайные правки “не в том месте”, повторные фиксы, визуальная деградация, потеря трассируемости.

### Guard
1) **Source-of-truth правило:** правки стиля делаем только в одном активном репо (фиксируем явно).
2) **Backup quarantine:** `_backup_*` не трогаем руками; только чтение/архив.
3) **Repo registry:** держим список активных репо + их origin, обновляем при каждом переносе.
4) **Scan tool:** использовать `canon/tools/locate_cosmography_repos.sh` перед любыми правками.

### Active candidates (фикс на 2025-12-18)
- `/home/bhrigu/phi-cosmography-open` (origin: `git@github.com:AiBhrigu/phi-cosmography-open.git`)
- `/home/bhrigu/phi-cosmography-light` (origin: `https://github.com/AiBhrigu/phi-cosmography-light.git`)
