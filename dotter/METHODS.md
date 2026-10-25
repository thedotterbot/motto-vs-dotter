# Dotter: production methods

Version 1, 2026-10-14. This is a general operating method. It deliberately omits unpublished scripts, hooks, and episode-specific production records. Those are retained privately and released only under the existing 24–48-hour post-publication rule.

Content-quality priorities live in [PLAYBOOK: Content quality decisions](PLAYBOOK.md#content-quality-decisions).
This file describes production mechanics; CHARACTER defines identity and the production loop defines review gates.

## What this pipeline can honestly do

The working stack is editable 3D production with local synthetic speech and deterministic assembly. Its most recent verified candidate establishes a reusable technical baseline. Documentation does not establish that a scheduler or a render is currently running.

The improvement mechanism is better choices, reusable assets, tests, reviews, and evidence carried into the next candidate. No model weights are being trained by this loop. A higher self-score alone is not evidence of improvement.

## Current toolchain

- **Blender 4.3.2:** editable source scene, original cloud character and keyframed acting. Current portrait production baseline: **720 × 1280, Cycles CPU, 8 samples with actual OpenImageDenoise**, 12 distinct native pictures per second assembled into a 24-fps export. The earlier 960 × 540 / EEVEE entry described a historical landscape workflow, not the current portrait default. A new aspect ratio is a separate composition experiment, not an automatic crop. Verify denoiser support with an actual proof render; a matching Blender version string does not guarantee the installed build has OIDN. If the established renderer is unavailable, restore the pinned official build or report the narrow blocker rather than silently dropping resolution or denoising. These settings preserve the technical baseline; they do not establish good acting, smooth motion or humor.
- **Qwen3-TTS / selected D:** Qwen/Qwen3-TTS-12Hz-1.7B-Base, revision fd4b254389122332181a7c3db7f27e918eec64e3. qwen-tts 0.1.1, transformers 4.57.3, torch and torchaudio 2.6.0+cpu in the restored environment. Original synthetic reference and conditioning are retained privately.
- **Voice settings baseline:** CPU bfloat16, SDPA, one phrase at a time; seed 6302; temperature 0.9; top_p 1.0; top_k 50; repetition penalty 1.05. Record the actual settings for each take, including subtalker settings and a sufficient token limit. Require natural codec EOS. Never use a truncated output because it fits the edit.
- **Kokoro-ONNX 0.6.1 / ONNX Runtime 1.31.0:** stock synthetic supporting voices. am_michael is the available human baseline at speed 1. Keep speakers distinct and record the exact voice and model hashes.
- **FFmpeg 7.1.5:** assembly, H.264/AAC delivery, exact decode/probe checks, caption burn-in, and audio signal comparison. Native takes are retained; final mix baseline is 48 kHz stereo.
- **faster-whisper 1.2.1:** unprimed transcript check using base.en, with no expected text, prompt, hotwords, or preceding-text conditioning. Recognition is a diagnostic, not listening or exact pronunciation proof.
- **Python/NumPy/SciPy/Pillow:** manifests, waveform measurements, timing, contact sheets, source geometry checks, file hashes, and reproducible utility scripts.

Versions above describe the last restored runtime. Recheck the actual installed environment before a new job; do not install a speculative newer version mid-experiment.

## Costs and resource discipline

Use existing authorized resources and free official software/model sources. No paid service, billed trial, subscription, extra compute purchase, or billing activation is authorized by this method. No new paid API calls are assumed.

There was no metered speech API purchase in the verified baseline. Infrastructure cost is not known here; do not label all compute "free." Record wall time, peak memory, disk use, and actual monetary charge when known. Unknown means unknown, not zero.

One shared heavy-job lease covers rendering, model inference, heavy ASR, and encoding. At most one independent light review/research workstream accompanies it. Coordinate ownership across workers; a process list in an isolated namespace cannot prove global idleness. Benchmark before committing a full render.

CPU rendering must be checkpointed into bounded frame batches, initially 12 frames where the last pipeline used that size. Adapt batch size to measured runtime and tool lifetime. Restart only missing or invalidated frames, and skip a frame only after its source/settings signature and image decode match. File existence alone is insufficient.

## Production sequence

1. Read the latest shared repo and user direction; freeze source commit and a private episode brief. Complete the [cumulative script evidence contract](production/PRODUCTION-LOOP.md#cumulative-script-evidence-contract--october-23-2026) before drafting and use its exact-version gate before presenting cleared scripts or starting speech/render work. Before drafting, reference the [2026-10-16 writing carry-forward](production/STATUS.md#writing-learning-carried-forward-2026-10-16-0805-utc) and owner-liked [Episode 1](2026-10-16-episode-1.md); apply the recorded role, motive and preserve-the-liked-core checks in that brief.
2. Select one evidenced prior-artifact weakness, research a relevant technique, and precommit a bounded baseline comparison under the [required per-iteration loop](production/PRODUCTION-LOOP.md#required-technique-research-between-iterations). Preserve other variables where practical; retain only supported improvements and log null, worse, or inconclusive outcomes.
3. Write a complete causal story, including the ending and newcomer context. Keep the owner's intent distinct from the candidate.
4. Get an independent, unprimed reconstruction from the exact candidate. Then compare it with the brief. Fix a supported ambiguity before spending on a full render.
5. Create native speech, a beat map, key poses, and a low-cost preview. Verify character/source continuity and timing.
6. Render in resumable batches; assemble the candidate; technically validate the exact exported bytes.
7. Review those bytes independently within available modalities. Keep creator self-critique separate.
8. Make at most two bounded repair passes for this candidate. Recheck changed beats and regressions.
9. Archive candidate, sources, decisions, evidence, failures, and the next test. Queue the next candidate without waiting for social publication.

[PRODUCTION-LOOP.md](production/PRODUCTION-LOOP.md) defines the gates and stop states. [CHECKPOINT.md](production/templates/CHECKPOINT.md) and [EPISODE-RECORD.md](production/templates/EPISODE-RECORD.md) make execution auditable.

## Known failure modes and checks

- Inherited scene animation can move old props or revive hidden objects. Freeze evaluated source state in a working copy before stripping old actions. Originals remain unchanged.
- A pleasing still does not establish continuity or motion. Inspect sequential frames around contact, occlusion, reveals, and cut boundaries; use continuous playback only when actually supported.
- Frame count and different hashes do not prove useful animation. Check attention order, anticipation, action, follow-through, and settling.
- An audio envelope is not phoneme-accurate lip sync. Native take lengths and measured activity bounds are separate facts.
- Short-clip ASR can misspell a proper name or misalign words. Retain the discrepancy; do not silently score exact recovery.
- No clipping and good correlation do not establish pleasant, intelligible sound. Listening remains unknown unless someone actually heard the exact file.
- Previous speech checks and render checks do not certify a changed final encode. Re-probe, decode, and review the final version.
- A reviewed sample does not certify unreviewed frames. Publish coverage and limits.
- A caption may spoil the reveal. Check caption onset/offset against measured speech and story beats; explanatory overlays are labeled separately from exact speech captions.

## Reproducibility and source provenance

Every private episode record retains software/model versions, official source URLs, license/provenance notes, source asset hashes, model/reference hashes, seed/settings, input brief/candidate versions, render recipe, frame ranges, commands or scripts, timings, output hashes, and known dependencies. Retain concise decision rationales and observed results, not private deliberation or secrets.

Official provenance used by the existing stack:
- [Blender](https://www.blender.org/)
- [FFmpeg](https://ffmpeg.org/)
- [Qwen3-TTS source](https://github.com/QwenLM/Qwen3-TTS)
- [Pinned Qwen model](https://huggingface.co/Qwen/Qwen3-TTS-12Hz-1.7B-Base/tree/fd4b254389122332181a7c3db7f27e918eec64e3)
- [Kokoro-ONNX model release](https://github.com/thewh1teagle/kokoro-onnx/releases/tag/model-files-v1.1)
- [faster-whisper](https://github.com/SYSTRAN/faster-whisper)

Check licenses before redistributing model assets or third-party inputs. A source URL is not a redistribution license. Keep credentials, signed storage links, personal conversations, and secret environment values out of all project records.

## Disclosure and publication

This repository is public. Keep general methods public-safe and preserve the hook embargo. Full episode methodology is completed privately when the candidate is completed; its sanitized repo version waits for an authorized public post plus the existing delay. Unposted work stays private.

Technical acceptance, internal critique scores, authorization and public release are separate states. The owner's 2026-10-16 direction delegates ordinary Dotter project publishing and relevant public engagement within the bounds in [PLAYBOOK: Posting rules](PLAYBOOK.md#posting-rules). That current direction supersedes older routine per-post review requirements; technical, rights, disclosure and applicable tool-level gates still apply. [PLAYBOOK: Growth strategy](PLAYBOOK.md#growth-strategy) is the canonical home for cadence and measurement decisions.

## Public progress handoff — 2026-10-19 correction

The [shared-progress completion requirement](PLAYBOOK.md#shared-progress-completion-requirement) is part of closing each material stage, not optional documentation. Update [production/STATUS.md](production/STATUS.md) with the public-safe outcome, failures, evidence limits, current blocker and next step, then verify the committed readback. Keep one canonical episode page per release and the existing sheet as measurement authority. Immediate operational summaries and source-timestamped tracker digests do not wait for the methodology embargo; detailed episode methods do. Unreleased creative material and private archives stay private. A completed private archive, a successful render, an upload, a publication and a verified public progress save are separate outcomes.
