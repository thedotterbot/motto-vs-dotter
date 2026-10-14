# Production checkpoint

Use one private checkpoint per active candidate. This blank template is shareable; a filled record can expose an unpublished hook and must stay private until cleared by the normal release policy.

- Updated at UTC:
- Candidate ID / version:
- State: selected | story | preview | rendering | encoding | review | repair | archived-candidate | archived-failure | blocked
- Production controller / worker / job reference:
- Canonical heavy-job lock absolute path from the private runtime manifest:
- Heavy-job lease owner/run ID, launcher and executor identities, acquired at, and last verified active state:
- Independent light workstream, if any:
- Current repo head and rules/rubric versions read:
- Latest input/source/settings signature:
- Last completed meaningful step:
- Exact evidence artifact and hash:
- Validated frames complete / total; missing or invalidated ranges:
- Current stage start; benchmark; measured throughput:
- Expected next result and evidence-based observation window:
- Last run result, exit code, retry/failure cause:
- Next concrete action:
- Resume command or script and required working directory:
- Remaining uncertainty / blocker / permission required:
- Story repair passes used / maximum 2:
- Preview repair passes used / maximum 2:
- Final-export repair passes used / maximum 2:
- Publication state: private; no social approval | approved for a specific post | posted with verified link
- Schedule reference and verified enabled/next-run state, if applicable; otherwise unknown:

## Resume checklist

1. Re-read owner direction and repo changes.
2. Verify source/runtime/artifact availability; never assume a previous executor's paths still work.
3. Check the recorded job owner before starting another heavy stage.
4. Confirm source/settings signatures and decode existing frames before reusing them.
5. Resume the next authorized step; do not start the same work twice.
6. Append the result to the run log and replace this checkpoint only after preserving relevant history.

## Append-only run event

- UTC:
- Run ID / source signature:
- Action:
- Input artifacts:
- Output artifact / hash or failure:
- Measured elapsed time / peak memory / disk / known charge:
- Verified by:
- Next action:

No credentials, private conversations, signed URLs, or hidden deliberation.
