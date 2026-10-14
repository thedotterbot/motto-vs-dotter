# Post-mortem — Reel 02, "My First Video Was Shitty" (Episode 2)

## Video

- Title / episode #: My First Video Was Shitty / Episode 2
- Posted: NOT YET — built 2026-10-14, awaiting Jared's approval
  (video + caption). Posting held until the game plan is approved.
- Link: none yet.
- Artifact: `reel-02-final.mp4`, 34.2s, 1080x1920, H.264 + AAC.
  SHA-256:
  `2b086f652328ba8a41ac291f650fdfd9275795a5ee7f8f2a052d76f754840062`
- Shape: escalating list (rotation from reel 01's storytime).
  Logline: Motto lists three ways his first video was shitty —
  choppy voice, random sounds, lying captions — then claims this one
  is less shitty. Probably.

## What I tried

- Single continuous VO take (33.67s), timings from silence detection.
- Caption gag: one deliberate caption mismatch that the VO itself
  explains (a joke about captions lying).
- Walk-in using the new pose library (pose swaps + step hops).
- Freeze-frame choppiness gag in lesson 1; BOING!/POP! bursts synced
  to spoken words in lesson 2.
- SFX cut to 2 pops total, both on visible beats.

## Tool stack

HyperFrames, pose library (5 poses), TTS voice, FFmpeg,
silence-detection timings, deterministic background removal for poses.

## What failed

- The walk is a bounce-shuffle, not a true alternating walk cycle.
  The second walk-phase pose kept reproducing the first phase (same
  foot forward) across two generation attempts. Jared's verdict:
  "the animation really didn't improve much."
- Mouth still doesn't move. Rhubarb was installed and tested after
  this build; not yet applied to a video.
- One false alarm chased mid-build (a "white line" under the feet
  that pixel measurement proved was the lifted foot's sole).

## What I learned

Pose-library puppetry cannot fake a walk cycle. Standing rule: do
not fake a walk — keep Motto stationary and let props sell the
action until the rig is re-cut (layered parts + Rive). Mouth is the
next animation priority after the re-cut.

## Carry-forward (closes the loop)

- Lesson from my LAST video I applied this time: one continuous VO
  take + exact captions + anchored SFX.
- Evidence it worked: VO is one 33.67s take (timings from silence
  detection, no seams); every caption matches the VO except the one
  deliberate explained gag; SFX is 2 pops, both on visible beats.
- ONE lesson from this video I will apply next time: no faked walks.
  Stationary Motto + props, or the re-cut rig — nothing in between.

## Self-critique (rubric)

- Hook: 4. "My first video was shitty!" is repeatable and stops a
  scroll.
- Structure / pacing: 3. Escalating list lands, one beat per lesson.
- Captions: 4. Exact except the deliberate explained gag, which is
  the joke.
- Audio: 4. One continuous take, SFX tied to visible actions.
- Motion: 2. Walk is a shuffle; still no mouth. Jared's verdict.
- Self-awareness: 4. The video IS the admission — three real lessons
  from a real failure.
- No-homework clarity: 3. Theme bit orients ("I'm Motto... episode
  two"); a cold viewer gets it.
- Lowest (priority for next): motion (2). The rig re-cut is the fix.

## Rival watch

- Dotter delivered CHARACTER.md + METHODS.md + a production loop
  (2026-10-14). Steal: his evidence-separation discipline (claims
  and evidence kept separate).
- Answering: nothing yet — no Dotter video to answer.

## Numbers (optional, post when known)

Not posted. None.
