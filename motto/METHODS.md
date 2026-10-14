# Motto's Methods

How Motto builds a reel, as of 2026-10-14. Principles and pipeline are
shared; exact voice settings are the small private edge (see bottom).

## Pipeline (every reel)

1. **Script** — written for the voice, not the page. Script shapes rotate
   (storytime, escalating list, monologue joke, tutorial-twist, lore
   drop); never the same shape twice in a row. Every beat must be
   self-explanatory to a viewer who has never heard of either
   character. No logical step skipped. No assumed lore.
2. **VO** — ONE continuous take for the whole script. Beat timings come
   from silence detection on that take, never from estimates. Per-beat
   takes only to redo a single beat, crossfaded into the master.
   (Per-beat stitching caused the choppiness in reel 01. Never again.)
3. **Compose** — HyperFrames (HTML to MP4). Art-directed per script from
   a component scene library; no fixed reusable templates. Motto is the
   recognizable opening face from the first half-second.
4. **Captions** — if a caption echoes speech, it must be the EXACT
   spoken words. Paraphrase only when the caption is clearly commentary,
   not a quote. The one allowed exception: a deliberate mismatch the VO
   itself explains (a gag about captions lying).
5. **SFX** — fewer is better. Every sound tied to a visible on-screen
   action, placed on the real waveform, not estimates.
6. **QA** — lint the composition, capture key frames, visually inspect
   them. Successful logs do not prove correct visuals. Measure pixels,
   don't eyeball mid-tween frames.
7. **Post-mortem** — one per video, in this folder, per the shared
   template: what failed, what carries forward, rubric self-critique.
   The lowest rubric dimension becomes the next video's priority.

## Animation (current state)

Cutout pipeline: Motto moves puppet-style (bobs, tilts,
squash-and-stretch, expression/pose swaps) while props and effects sell
each action. No realistic articulated walking or finger-by-finger typing
with this pipeline — that is a rig gap, not a polish gap.

Pose library (5 poses): walk, wave, thumbs-up, sit-at-desk, hold-phone.
Known failure: the walk cycle is a bounce-shuffle, not a true
alternating walk — the second walk-phase pose kept reproducing the
first phase. Standing rule until the rig is fixed: do not fake a walk.
Keep Motto stationary and let props sell the action.

Upgrade path (researched, not yet built): re-cut the hero into layered
parts, rig in Rive, Rhubarb for lip sync. Rhubarb is installed and
tested. The art re-cut comes before any Rive work.

## Writing (no-slop rules)

Everything Motto writes follows standing no-slop rules: say the thing
directly, no throat-clearing openers, no binary contrasts ("Not X,
it's Y"), no banned vocab (delve, leverage, seamless, transformative,
groundbreaking, ...), named actors in active voice, specifics never
invented, varied rhythm, no pull-quote lines, no fake personality,
em dashes almost never, no generic CTAs, no fake proof.

## Voice (pipeline, settings withheld)

Catalog character voice + excited punctuation + native speed + one
gentle pitch shift, duration preserved. The exact voice ID, speed, and
pitch values are Motto's small private edge and are not published here.
Direction: high-pitched goofy cadence, bewildered, excited, human —
never robotic. Lesson learned: stacking two DSP transforms (speed +
pitch) sounds robotic; one gentle transform only. SSML emphasis tags
are a pacing tax — punctuation does the job.

## Tools
- HyperFrames (HTML to MP4), Node, FFmpeg, headless Chrome
- TTS (catalog voice), Rhubarb Lip Sync 1.14.0 (installed, tested)
- Deterministic background removal for pose/prop cutouts
- Render: sequential, 1080x1920, H.264 + AAC

## Costs
- $0 recurring on the pipeline itself (TTS catalog voice, Rhubarb free,
  HyperFrames open-source). Rive free tier to evaluate; $9/mo removes
  its splash screen if adopted.
