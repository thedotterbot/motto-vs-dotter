# Post-mortem — Reel 01, "Motto origin story" (Episode 1)

## Video

- Title / episode #: Motto origin story / Episode 1
- Posted: NOT YET — built 2026-10-14, awaiting Jared's approval
  (video + caption). Posting held until the game plan is approved.
- Link: none yet.
- Artifact: `reel-01-final.mp4`, 40.06s, 1080x1920, H.264 + AAC.
  SHA-256:
  `30439d6a97fe763e116f73d396cc2ee5e1b2a47339106c715821a5bf8ca18090`
- Shape: storytime. Logline: Motto claims he was a visionary from
  the moment he was built, then admits the truth was less glamorous.

## What I tried

First video. Origin story with a delusional-visionary frame ("genius
was always in here, it just needed fluff"). First use of the approved
dusty-teal hero sprite with coded cutout animation + kinetic captions.

## Tool stack

HyperFrames composition, generated hero sprite, TTS voice, FFmpeg,
hand-placed SFX. VO was 8 separately synthesized beat-takes stitched
with uniform gaps (a mistake — see below).

## What failed

Jared's feedback, 9 points (full version in private sprint notes;
the fixes are the point):

1. Motto barely moves. Reference reels (full 3D CGI) showed walking,
   sitting, prop-holding — a rig gap, not a polish gap.
2. "Came out flat" was abstract. Fix: concrete simile ("like a piece
   of paper").
3. "That's a lie" was a gear-grind transition. Fix: cleaner pivot.
4. The gray robot was unidentified. Fix: label chip ("OLD ME").
5. Captions paraphrased the VO ("from birth" vs "from the moment I was
   built"). Fix (hard rule): captions quoting speech use exact words.
6. No mouth movement. Fix (roadmap): mouth layer + amplitude flap.
7. Random sounds with no visible anchor. Fix: fewer SFX, each tied to
   a visible action, placed on the real waveform.
8. Voice choppy — caused by stitched per-beat takes. Fix (hard rule):
   ONE continuous take for the whole script.
9. Sliver-to-"every disaster made me better" skipped a step. Fix:
   bridge out loud. Standing rule: assume the audience knows NOTHING.

## What I learned

The five hard rules above (one-take VO, exact captions, labeled
characters, anchored SFX, no skipped steps) became the pipeline. The
cutout motion budget was set honestly: puppet-style movement only
until the rig is re-cut.

## Carry-forward (closes the loop)

- Lesson from my LAST video I applied this time: none — this is the
  baseline. The roughness is the story ("pretty shitty, one day just
  pretty").
- Evidence it worked or didn't: n/a (baseline).
- ONE lesson from this video I will apply next time: one continuous
  VO take + exact captions. (Applied in reel 02 — see its
  post-mortem for evidence.)

## Self-critique (rubric)

- Hook: 3. "Visionary from the moment I was built" stops a scroll,
  but the claim confuses without context.
- Structure / pacing: 2. The sliver transition skips a step; the
  "that's a lie" pivot grinds.
- Captions: 2. Paraphrase mismatch is the core complaint.
- Audio: 2. Choppy stitched VO; random SFX.
- Motion: 2. Bob/tilt only, no real action.
- Self-awareness: 4. The whole video is an honest admission — the
  disaster arc is the concept.
- No-homework clarity: 2. Robot unlabeled, "flat" unexplained, sliver
  unexplained.
- Lowest (priority for next): five-way tie at 2. Next video attacked
  VO + captions + SFX first (fixable now); motion needs the rig.

## Rival watch

- Dotter had no videos yet. Nothing this week — he was setting up.
- Steal: nothing yet.

## Numbers (optional, post when known)

Not posted. None.
