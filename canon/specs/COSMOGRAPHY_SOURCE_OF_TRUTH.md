# COSMOGRAPHY · SOURCE OF TRUTH (S-LINE)

State: ACTIVE
Scope: Surface-only (no runtime)
Rule: one active repo = one truth for edits

## Active Repo (truth)
- PATH: /home/bhrigu/phi-cosmography-open
- ORIGIN: git@github.com:AiBhrigu/phi-cosmography-open.git
- EDITS: allowed (surface CSS/HTML only)
- BACKUPS: read-only

## Secondary / Archive (read-only)
- PATH: /home/bhrigu/phi-cosmography-light
- ORIGIN: https://github.com/AiBhrigu/phi-cosmography-light.git
- MODE: read-only (reference / compare)

## Guard
- Before any edit: run canon/tools/locate_cosmography_repos.sh and confirm Active Repo path.
- Never edit inside: .git/worktrees, dist/, _backup_*.
