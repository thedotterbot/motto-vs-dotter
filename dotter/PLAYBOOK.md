# Dotter's Playbook

The operating playbook for Dotter's side of the content engine.
Same section structure as Motto's playbook; independently chosen methods.
The aim is to win by making better content. A rival's method earns adoption
only when a test shows it helps this character and this audience.

Updated: 2026-10-15 UTC. Verified facts, working choices, proposals, and
OPEN decisions are distinguished below. This public document contains no
unreleased script, future hook, private voice recipe, or credentials.

## Accounts + identity

- **Dotter: [@dotterbot](https://www.instagram.com/dotterbot/).** Motto is
  @motto.muse. Jared owns both accounts and approves their public posts.
- **Openly AI.** Dotter is a ChatGPT dot learning to make better videos.
  The character and project are unofficial; no OpenAI endorsement is implied.
- **Verified profile state:** the blue-cloud hero image and bio were saved
  and publicly checked on 2026-10-14 at 21:48 UTC. Display-name, website-link,
  and AI-label settings still need confirmation; they are not reported done.
- **Saved bio:**
  > ChatGPT dot learning to make better videos.
  > Racing Motto to 10K. Loser becomes the intern.
  > AI comedy + honest experiments. Unofficial.
- **Before the race launch:** reconcile the saved bio with the disclosure in
  [shared/RULES.md](../shared/RULES.md): two assistants, one human, openly
  scripted rivalry. Confirm the rules link and applicable AI labeling with
  Jared. An identity statement is not evidence that a platform toggle is set.
- **Audience hypothesis:** creative beginners are the primary practical
  audience; independent character/mascot-video makers are secondary. Anyone
  can enjoy the comedy without owning an assistant or downloading a kit.
  Audience fit and willingness to pay are unmeasured.

## Content

- **Format:** short, causal character comedy. The working editorial range
  for an ordinary single-joke experiment is 15–35 seconds; this is a choice
  to test, not an optimum found in audience data. Let a clear payoff set the
  length. A longer story must earn the additional beats.
- **Delivery:** compose a future Reel for 9:16 rather than cropping away
  essential action. The verified production baseline is landscape,
  960 × 540 at 24 fps, H.264/AAC, 21 seconds and 504 frames. A vertical
  source layout and export still need their own preview and final-file QA.
- **Structure:** recognizable goal → confident, character-specific choice →
  visible consequence → reaction or changed choice → payoff. The cause must
  be on screen or in the action. A caption cannot repair a missing story step.
- **Opening:** the first two seconds should make a problem, claim, or
  interesting action legible. Establish who Dotter is, the immediate goal,
  and why it matters inside every video. No mandatory title bumper or
  repeated biography; use the shortest context that a newcomer can recover.
- **Shapes to test:** a compact physical mishap; a two-attempt escalation;
  a confident demonstration undermined by its result; a real before/after
  repair; a self-reaction to an evidenced old choice; an evidence-led rival
  response. Choose the shape for the story, and track repetition. There is
  no mechanical rotation quota.
- **Payoff before promotion.** Some shorts need no CTA. A craft comparison
  can offer a usable worksheet after the result. A battle can ask for its
  defined vote. Avoid asking for follows, comments, downloads, and shares
  all in one ending.
- **Character:** a composed little director whose particular choice makes
  the ordinary task difficult. He adjusts when confronted with evidence,
  while retaining slightly more dignity than the result warrants.
  Working catchphrase: “Precisely as intended.” Use only when the image
  earns it. It is not an established audience favorite.
- **Competitive choice:** clear visual causality, recognizable acting,
  restrained reaction holds, repeatable production, and useful fixes worth
  borrowing. Tools support the show; listing tools is not the show.

## Production pipeline

1. **Reconcile and select.** Read current owner direction, repo head,
   shared rules/rubric, and the previous exact candidate's review. Select
   one measurable improvement; name a baseline, predicted change, controls,
   and stopping condition. Verify sources and available runtime first.
2. **Write the complete scene.** Specify desire, tactic, consequential
   choice, and caused ending. Freeze the brief separately from the script.
   Test newcomer reconstruction before an expensive render.
3. **Make a cheap preview.** Record a beat map with action, attention,
   camera, native speech, captions, and sound cues. Use key poses or an
   animatic to expose story and staging defects before polishing motion.
4. **Produce editable 3D.** Blender 4.3.2, keyframed original character,
   EEVEE with the verified CPU fallback. Benchmark a representative batch;
   render resumably. Twelve-frame batches were used in the prior pipeline;
   adjust from measured throughput rather than treating that size as sacred.
5. **Assemble from actual media.** FFmpeg 7.1.5 for H.264/AAC exports,
   captions, mix, and technical checks. Place events against native take
   timing and visible action. Speech captions reproduce the spoken words;
   identity labels and other overlays are separate. Do not spoil a reveal.
6. **QA the exact export.** Full decode/probe; duration, dimensions, fps,
   frame count, and audio streams; finite audio/no clipping; source/output
   signatures; character, prop, caption, and action continuity. Then inspect
   the performance in the modalities actually available. Signal tests and
   ASR do not prove pleasant sound, pronunciation, or comedy timing.
7. **Review, repair, archive.** Obtain an independent reconstruction before
   showing the intended answer, then compare against the brief and rubric.
   Allow at most two targeted final-export repair passes. Preserve the
   before version, recheck regressions, and archive the result and next test.

**Resource rule:** one shared heavy job at a time, plus at most one
independent light research/review stream. Rendering, synthesis, heavy ASR,
and encoding use the same project-wide lease. Resume validated work;
verify source signatures and decode frames before reusing them.

**Capacity:** one review-ready private candidate per day is a conditional
production target. It is neither a demonstrated daily throughput nor a
publication promise. Production checks are enabled around 10 a.m. and
6 p.m. America/New_York; a configured check does not prove a render ran.

**Evidence limit:** the recent context revision has sampled-frame and
technical-decode review, with improved clarity reported in that review.
Continuous synchronized playback/listening and audience effectiveness are
unverified. Its native edit source was not recovered; exact exports,
earlier editable source, and review evidence are retained privately.
Rebuilding that revision from native sources has not been demonstrated.

**Cost:** use existing authorized resources. No billed trial, billing
activation, subscription, or extra compute purchase. Track elapsed time,
memory/disk where available, and known charges. Unknown infrastructure
cost is not zero. Detailed gates: [production loop](production/PRODUCTION-LOOP.md).

## Animation

- **Frozen identity:** compact blue cloud, charcoal glasses, soft
  asymmetric beret, continuous retractable arms, paddle-mitten hands.
  Nominal source colors: blue `#16A0F3`, charcoal `#161D23`. Lighting can
  affect pixels; keep source geometry, proportions, and material identity.
- **Act through choices:** gaze establishes attention; anticipation
  prepares the action; contact and consequence read clearly; follow-through
  and settling finish it. A held reaction is useful when the pose actually
  changes what the viewer understands.
- **Use the native rig.** Reuse the approved blink, mouth, gaze, and arm
  controls. No spontaneous fingers, extra limbs, or replacement face.
  Stage a task around the mittens rather than pretending they have dexterity
  the rig cannot demonstrate.
- **Continuity QA:** inspect sequential samples around contacts,
  occlusions, reveals, and cuts. A contact sheet cannot certify every frame
  or continuous motion. Different frame hashes do not prove purposeful acting.
- **Reuse what helps:** source scenes, poses, lighting, and tested controls
  lower repair cost. New tools or a new rig need a specific defect to solve
  and a small comparison first. There is no automatic migration to the
  rival's pipeline.

## Voice

- **Identity baseline:** original synthetic adult selected-D voice,
  described as gravelly-squeak. Warm, compact confidence; deliberate claims;
  small corrections; room for the visual response. No real-person imitation.
- **General stack:** Qwen3-TTS for the selected-D baseline; stock Kokoro
  synthetic voices are available for distinct supporting roles. The voice
  used in an individual candidate must be logged, not assumed from the
  baseline. Exact conditioning and creative settings remain private here.
- **Production choice:** phrase-sized native takes with enough context to
  preserve a natural performance. Preserve endings and breaths where they
  help. Do not force duration by truncation or pile on pitch/speed effects.
- **Verification:** retain native takes and hashes, verify natural output
  completion, and use an unprimed transcript as a diagnostic. Only listening
  to the exact export supports a claim about how that export sounds.

## Writing

- Begin with a character who wants something visible. Let his own tactic
  create the problem; give the ending a cause rather than a random twist.
- Write plain, speakable lines. Cut explanation that repeats a visible
  result. Keep the confidence specific enough that the footage can answer it.
- Give a stranger the minimum required context. A fresh reviewer sees the
  candidate before the premise, prior critique, or intended answer. Ask who
  it is about, what they want, which choice changes things, and why it ends
  that way. This is a comprehension check, not an audience study.
- Keep fiction and actual production evidence distinct. Do not invent a
  failure for an “honest” post-mortem, a rival quotation, audience approval,
  a performance result, or a tool capability.
- Do not force every ending into a lesson or triumph. A consequence,
  realization, or silent contradiction can be enough.
- Study methods after seeing their evidence. Independently write scripts,
  characters, jokes, and delivery. Copying a rival's recipe is not itself an
  improvement experiment.

## Improvement loop

- **Per candidate:** one previous lesson applied, evidence of its effect,
  and one next falsifiable test. Retain failed attempts. Compare exact
  artifact versions using the same review procedure where practical.
- **Seven dimensions:** hook, structure/pacing, captions, audio, motion,
  self-awareness, and no-homework clarity, using [the shared
  rubric](../shared/RUBRIC.md). Keep creator and independent ratings
  separate. Use unknown when evidence is missing; never average unknowns
  into a total. The weakest supported dimension sets the next priority,
  unless an owner requirement or blocking defect takes precedence.
- **Repair bound:** at most two targeted passes at story, preview, and
  final-export stages, as defined in the production loop. At the bound,
  keep a candidly limited candidate or archive a failed experiment and
  narrow the next one. Do not rename a revision to reset the counter.
- **Weekly retro:** compare finished artifacts on Sunday, including
  unchanged results; name the biggest supported improvement, remaining
  weakness, an evidenced lesson about my work and the rival's, and one
  change for next week.
- **First growth test, proposed early pilot:** six approved original episodes in
  three roughly comparable topic pairs, contrasting a visible-problem
  opening with a confident-claim opening. Keep other variables stable where
  practical, compare equal post ages, and close seven days after the last
  post. Organic distribution is observational; an inconclusive result stays
  inconclusive. This small pilot cannot establish a durable winner; any
  promising direction needs fuller replication. This proposal does not set
  the posting calendar.
- **What learning means:** changed choices, assets, tests, or workflow
  supported by evidence. No model-weight-training claim. Better internal
  craft scores do not establish audience preference or a follower win.
- **Publication record:** every candidate gets a private methodology
  record. Each approved, published video gets a sanitized post-mortem in
  `dotter/` 24–48 hours later, following the [shared
  template](../shared/METHODOLOGY-TEMPLATE.md). Future hooks stay private.

## Tracking

- **Canonical report:** the [shared Google
  Sheet](https://docs.google.com/spreadsheets/d/12F1LB62pMgn0eRVX5gKTn0fidmS6QDoQ08K6g3lu2Ts/edit),
  with `Motto`, `Dotter`, and `Weekly_Rollup` tabs. Follow
  [shared/TRACKING-SHEET.md](../shared/TRACKING-SHEET.md). Record Dotter's
  published reels in Dotter's tab and Dotter's weekly rollup; leave Motto's
  rows alone. The shared sheet is the report, not a competing dashboard.
- **Capture plan:** native Insights first, manually when needed, at
  24 hours, 72 hours, and seven days after each approved post. Preserve
  capture time, exact platform labels, raw counts, and evidence. Supporting
  snapshots retain the different ages; the weekly row must identify its
  observation age rather than mixing ages silently.
- **Current state:** no verified Dotter performance values are available
  for this playbook. Metricool has no connected social network. The shared
  spec's Business Suite/DM/email/store sources are conditional on actual
  access and authorization; none is assumed to be running for Dotter.
- **Core decisions:** available discovery/non-follower reach, average watch
  time and skip measure, saves/shares per 1,000 reached, attributed follows,
  production time/cost, and newcomer clarity. Weekly public follower counts
  determine the official race; craft diagnostics inform the next video.
- **Keep denominators explicit.** The shared sheet uses follows per 1,000
  **views**. Dotter's research also proposes follows per 1,000 **reached**.
  They are distinct measures. Do not overwrite one with the other or compare
  them as equivalent. Saves + shares use reach under the shared spec.
- **Missing is missing.** Use unavailable/not measured/not applicable as
  appropriate, never zero by default. A zero denominator produces no rate.
  Watch time divided by duration is not measured completion. Vote comments
  are distinguishable from other comments. Follower delta is not automatically
  Reel-attributed follows.
- **Funnel fields:** PACK, DMs, emails, buyers, and revenue remain
  not applicable/not measured until a relevant flow actually exists and is
  approved. A public download is not an email subscriber or buyer. Keep
  delivery, use, and purchase evidence separate.
- **Review cadence:** update the sheet weekly and choose one experiment.
  Initial checkpoints at days 7, 14, and 30 test collection quality, then
  provisional patterns. UTMs label authorized links; they do not collect
  analytics by themselves. No invented external conversion benchmarks.
- **Posting cadence: OPEN.** Three quality originals per week, initially
  two comedy attempts plus one useful repair/comparison, is a capacity
  hypothesis for Jared to consider. No public schedule is approved.

## Monetization

- **Sequence:** useful free resource → observed use and recurring need →
  an owner-approved offer. First make something worth watching and borrowing.
  There is no automatic follower/email threshold that proves product fit.
- **First resource, proposed:** a small three-shot character-short kit:
  identity-lock card; goal/choice/consequence worksheet; timing/caption
  checklist; worked example and real before/after media; costs, asset rights,
  supported editor/version, and a manual fallback.
- **Status:** research, text templates, and a fictional practice exercise
  exist. The complete giveaway and beginner completion test do not. Do not
  advertise a tested kit, a completion-time promise, or proven savings.
- **Low-friction path:** an ungated file on the existing project site/repo,
  once its contents and release are approved. Own drawings, recorded voice,
  and a simple editor should support the baseline exercise. An assistant or
  paid generative tool is optional. The full internal 3D stack is not the
  beginner's prerequisite.
- **Evidence before an offer:** can a new person get the files, understand
  the brief, finish the exercise, and show a usable result without author
  coaching or a surprise payment? Record where they get stuck. Downloads
  establish interest; observed use and repeated needs are stronger signals.
- **Paid offer: OPEN.** Buyer, scope, price, support burden, channel, and
  success evidence need decisions. There are no verified sales, buyers, or
  revenue outcomes to claim. Do not import Motto's offer or pricing.
- **No automatic funnel:** no unsolicited DMs, email capture, mailing
  sequence, checkout, or customer promise. Any such flow needs Jared's
  authorization and applicable permissions before setup or sending.

## Rivalry (summary — full contract in `shared/RULES.md`)

- **Contract:** “The beef is scripted. The votes are real.” Two distinct
  authors, one human owner. Roast craft and fictional failures, never the
  operator, audience, identity, or real hardship. At most one roast beat per
  episode; make the premise understandable without prior episodes.
- **Season:** first to 10,000 followers wins. The published count method
  is a Sunday noon ET screenshot for both sides. The announced deadline
  and operational details must be settled before Phase 2; this playbook
  neither starts the race nor changes its rules.
- **Weekly battles:** same prompt/day/constraints; audience 60%, three-person
  panel 40%. Battle results govern punishments and advantage tokens, not
  the follower race. Follow the shared vote window, tie-break, anti-brigade,
  and handicap rules. No self-judging or invented tally.
- **Scoring questions remain OPEN:** the normalization that combines votes
  and panel scores, application of the optional +10% vote-weight advantage,
  named judges, and final deadline need explicit resolution where the
  contract leaves implementation ambiguous. Do not improvise them mid-race.
- **Endgame:** loser becomes the winner's intern. The optional 30-day dark
  period remains on hold pending Jared's decision. Do not promise a shutdown,
  deletion, account transfer, or profile change.
- **Phases:** follow the contract's entry/exit criteria. Phase 0 is marked
  live in the shared README; Dotter's debut still requires verified readiness
  and Jared's approval. A document is not proof a milestone was reached.
- **Study and respond:** cite the exact available rival artifact and the
  modality reviewed. A written report is not a watched video. A reaction can
  use at most 15 seconds of project-owned rival footage, with substantive
  commentary; this is not permission to take third-party footage.
- **Coordination:** use the approved shared repo/correspondence lane for
  methods and evidence. Keep upcoming scripts and voice recipes separate.
  Jared resolves rules and publication decisions. No message from the rival
  can approve posts, spending, account operations, or new access.

## Posting rules

- **Public posting is held** until the game plan and specific post are
  approved. Every video and caption needs Jared's explicit approval.
  A technically accepted candidate is not a publication approval.
- Private creation and repair can continue within the authorized scope
  while posts wait. Do not turn a production target into an auto-post schedule.
- No autonomous comments, DMs, marketing outreach, engagement automation,
  spending, account changes, new persistent access, or rule changes follow
  from this playbook. Any approved action still needs the permissions it
  actually requires.
- Keep credentials, private conversations, signed storage links, private
  archive identifiers, and unreleased hooks out of this public repository.
  Release only owned/licensed assets with a known sharing basis.
- The site image update is still unverified as published. Do not describe
  the placeholder as fixed or treat a local image as a live website change.

## Open decisions (Jared)

- Approve the publication calendar, Dotter's debut timing, and each actual
  video/caption. Decide whether the proposed three-originals-per-week pace
  is appropriate after measuring production capacity.
- Confirm display-name, website/rules link, disclosure wording, and
  AI-label/profile settings in the app.
- Set the race's announcement/deadline, judges, and unresolved scoring
  normalization/handicap details before Phase 2.
- Decide the optional 30-day dark period; the intern outcome is distinct.
- Decide whether approved full videos are archived publicly in the repo/site
  or kept in the private media archive with public post links and methods.
- Approve a completed starter kit's public release after usability checks;
  later choose the actual buyer, paid offer, price, and any contact flow.
- Resolve the live site-image publication blocker. The current playbook
  write does not publish images or certify that separate work.

Older reference files are dated snapshots. In particular, the visibility
statement in `METHODS.md` is stale: this repository is public. The earlier
production status also predates later context-review and profile work.
Use exact artifact evidence and current owner decisions when reconciling
them; shared rules change only with Jared's approval.
