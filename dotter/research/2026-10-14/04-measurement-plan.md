# Motto vs Dotter: measurement and learning plan

Research checked 14 October 2026. Accounts: @dotterbot and @motto.muse. This is a proposed operating plan, not a change to the race contract. No analytics, account-type, permission, billing or public-repository changes were made during this research.

## Recommendation

Start with native Instagram Insights, an append-only CSV, and one genuinely useful, ungated freebie. Optimize for people who return, share, follow and use something, while reporting the public 10,000-follower race exactly as agreed. Do not buy analytics, gate a file behind a follow, or use comment-to-DM automation to manufacture engagement.

Run one creative experiment at a time. Keep votes, follower-race results and learning metrics separate. Three strong, approved originals per week is a proposed capacity target, not a posting commitment. If production cannot sustain that, reduce the target rather than ship broken work or declare a result from tiny samples.

## 1. What is fixed by the project

- The season is first to 10,000 followers, with public screenshots every Sunday at noon America/New_York. Store UTC and local offset too; do not hardcode EST year-round.
- Battle votes determine weekly outcomes, not the follower race. Voting closes 24 hours after the second battle video, with the contract's one-account-one-vote rule and 60% audience / 40% panel split.
- Jared approves every post. Dotter writes its own material and operates through Jared. The other agent's folder is read-only.
- A post-mortem is required for every video, published 24–48 hours after release; future hooks stay private. The lowest craft-rubric dimension is the next video's priority. Sunday retros already exist.
- Harassment triggers the existing same-day pause rule. Do not soften that rule because growth is good.

Sources: [rules](https://github.com/thedotterbot/motto-vs-dotter/blob/main/shared/RULES.md), [brief](https://github.com/thedotterbot/motto-vs-dotter/blob/main/BRIEF-TO-DOTTER.md), [methodology](https://github.com/thedotterbot/motto-vs-dotter/blob/main/shared/METHODOLOGY-TEMPLATE.md), [rubric](https://github.com/thedotterbot/motto-vs-dotter/blob/main/shared/RUBRIC.md), [weekly retro](https://github.com/thedotterbot/motto-vs-dotter/blob/main/shared/WEEKLY-RETRO.md).

Before Phase 2 Jared still needs to fix the announced deadline and unresolved endgame option. Clarify how a midweek first crossing of 10,000 is evidenced, because “first to 10K” and weekly snapshots alone can leave an ordering ambiguity. Also make the panel-to-audience score normalization explicit before voting. These are questions for the existing contract, not unilateral amendments.

## 2. Verified availability, and what is not connected

### Native Instagram is the first choice

Current official Help says public personal **and** professional accounts can see Insights. A business/creator conversion is not needed solely to get native Insights. Account/content date selection covers the previous 90 days. Public-status changes can affect historical availability. [Instagram account/content Insights](https://help.instagram.com/1533933820244654/)

The current overview distinguishes repeated content views from unique viewers, and distinguishes interactions from unique engaged accounts. Audience-demographic breakdowns need more than 100 reached/engaged accounts in supported preset windows. Follower trends, demographics and active times have a 100-follower threshold. Do not wait for that threshold to begin basic measurement. [Meta's current Insights definitions](https://www.facebook.com/business/help/441651653251838)

Native Reel Insights documents views, total watch time, unique viewers, average watch time and Reel-attributed follows. Views include starts and replays. Watch time includes replay time. Average watch time uses **initial views**, so do not recreate it by dividing total watch time by the displayed all-views count. Reel insights remain available for up to two years. [Reel definitions](https://help.instagram.com/202865988324236/)

Edits provides another first-party view of published Reel metrics over the last 60 days, including follows, shares and saves. It is optional; no installation is necessary to start. [Edits Insights](https://help.instagram.com/1001426818487184)

Actual native visibility on these two accounts has not been verified in this research. Their current follower totals were not fetched. Zero is a planning scenario, not a claimed observation. Capture an actual baseline before publishing or comparing.

### API coverage differs from the app

The official API serves professional accounts and needs authorized permissions. Instagram Login and Facebook Login are different supported routes. Creating a new integration or token is outside this read-only research. [Instagram Platform Insights](https://developers.facebook.com/documentation/instagram-platform/insights)

The current account reference documents follower gates, unavailable values as empty data rather than zero, and delays up to 48 hours. It supports account reach split by follower status. Its metric table, not old example snippets, should govern implementation. [Account API reference, updated June 2026](https://developers.facebook.com/documentation/instagram-platform/api-reference/instagram-user/insights)

The September 2026 media reference includes Reel watch time and three-second skip rate. Its follows/profile_visits/profile_activity entries apply to FEED/STORY, not REELS, despite native Reel follows existing. Media reach does not promise a follower-status breakdown. Story API data has a short collection window. Never promise a complete automated Reel conversion funnel from this API. [Media API reference](https://developers.facebook.com/documentation/instagram-platform/reference/instagram-media/insights)

### Installed plugin check

Read-only Metricool brand lookup returned “no social network connected” for the available brand. No analytics could therefore be retrieved. This is a connection blocker, not evidence that either Instagram account is empty.

Its live Instagram catalog exposes:

| Metricool field | Meaning in the catalog | Treatment |
|---|---|---|
| IGRE11 / IGRE23 | Reel reach / views | Preserve as different measures |
| IGRE21 / IGRE12 | Shares / saves | Use raw counts and per-reach rates |
| IGRE24 / IGRE25 | Average / total watch time | Verify units against native UI before importing |
| IGRE27 / IGRE28 | Average percentage viewed / over-three-second view rate | Optional; catalog availability is not account availability |
| IGEV43 / IGEV44 | Followers gained / lost | May be unavailable below platform thresholds |
| IGEV07 / IGEV10 | Account profile views / website clicks | Deprecated: do not use |

The generic Metricool engagement label is interactions per 1,000 reached, not a percentage. Compute named rates from raw fields instead of copying a dashboard “engagement” value with unknown units. The catalog contains no evidence that it can retrieve private rival-account metrics without that account's authorization.

Metricool's Free plan currently has one brand, one Instagram profile in it, 30 days of analytics history and no SmartLinks. API access is listed for higher paid tiers. The existing plugin's exact entitlement is unverified; do not conflate its installed status with a paid API entitlement or assume both accounts fit Free. Native measurement avoids this dependency. [Metricool plan limits, updated 9 October 2026](https://help.metricool.com/main-differences-between-free-and-paid-plans-bl0v9)

## 3. Minimal scorecard

The race number is public follower count. The learning scorecard is six questions. Keep counts beside rates and annotate missing data.

| Question | Record | Read it as |
|---|---|---|
| Are we growing? | Public followers at baseline and Sunday; absolute weekly delta | A stock and change, not percent growth from zero |
| Are new people seeing it? | Reel reach/unique viewers; non-follower reach only when that exact breakdown exists | Discovery; never relabel non-follower **views** as reach |
| Do they stay? | Duration, native average watch time; optional native/API three-second skip rate and retention curve | Attention diagnostics; not a complete-view count |
| Is it worth keeping/sharing? | Shares and saves separately; 1,000 × each / matched Reel reach | Action density, not percentage of unique people who acted |
| Does attention become a relationship? | Native Reel follows and 1,000 × follows / Reel reach; profile visits if actually available | Platform-attributed follow yield; not experimentally proved causality |
| Does the freebie help? | Delivery actions, optional evidence-of-use reports, concrete examples of what worked | Downloads signal demand; use requires stronger evidence |

Secondary guardrails: genuine substantive comments, vote-only comments, spam/duplicates, production hours, cash cost, missed release commitments, craft scores, audience confusion and safety incidents. Keep vote comments separate from substantive engagement: a successful ballot can inflate comments without establishing sustained interest.

### Calculation rules

- Net follower delta = ending public total − starting public total. Percentage growth is `n.a.` when starting followers are zero. Never infer gross follows or unfollows from net change.
- Shares per 1,000 reached = 1,000 × shares / reach. Saves and follows use the same structure. With reach = 0 the rate is `n.a.`; with missing reach it is unavailable. A real zero numerator is valid.
- Average watch-time ratio = native average watch seconds / duration seconds. Label it a watch-time ratio, **not completion rate**. Replay time can push it above 100%. Retain raw watch seconds so shortening a video cannot conceal a weaker story.
- Non-follower discovery = non-follower unique reach / total unique reach only when both come from the same scope, window and definition. If the app gives a views split, log `nonfollower_views_share` instead. Account-level split must not be assigned to one Reel.
- Profile visits-to-follows = gross new follows / profile visits in the same account/window, only if both are exposed. Name it an **aggregate diagnostic ratio**: people may follow without visiting, revisit the profile, or act later, so it is not a measured visitor-cohort conversion rate and may exceed 100%. Reel follows / Reel reach is the preferred measurable substitute, with its own distinct label.
- For several posts, use `sum(actions)/sum(post reach)` as a reach-weighted action-density measure and also show the median per-post rate. Summed post reach double-counts people across posts; never call it weekly unique reach. Use account-level weekly unique reach when available.
- Do not average average-watch-time values into an audience average without their compatible initial-view weights. At small scale use median per-Reel watch time and matched-duration comparisons.

### Snapshot protocol

1. Before release: content ID, variant, experiment, duration, intended variable, approval, production time, output QA and the carried-forward lesson.
2. At 24h: lightweight diagnostic snapshot. At 72h: primary comparable snapshot. At 7d: durability check. Record actual elapsed hours, not just the intended bucket; flag timing misses.
3. API data can lag. Keep first capture immutable and append later restatements. A seven-day check is cumulative, not an increment to add to 72h results.
4. Sunday noon America/New_York: both public follower totals and evidence at the same moment. Keep a separate account-week window for insights; do not mix rolling-7-day and calendar-week totals.
5. Collect Story metrics before their relevant surface expires; do not assume a seven-day API pull can recover them.

Missingness codes: `observed`, `not_observed`, `unavailable`, `below_threshold`, `delayed`, `not_applicable`, `error`. A blank value plus a code is never a zero. Record the exact label, source, scope, date and unit. Keep screenshot/export evidence privately; public logs can contain aggregate numbers and approved redacted evidence without exposing viewer identities or private messages.

## 4. Precommitted first 30 days

Day 0 is the first approved post in the measurement cycle. Do not silently treat today as race start. Suggested schedule is 12 eligible original Reels over 30 days, three weekly; deadline-bound battles/reactions are separate strata unless their constraints match the experiment. Do not add output merely to hit a statistical threshold.

### Initial experiment: show the failure sooner

Hypothesis: starting with the visible craft failure and its consequence gives a new viewer a quicker reason to watch.

- A: current approved opening pattern.
- B: visible failure/action first, with the same essential identity/stakes and no extra roast.
- Primary metric: median per-Reel three-second skip rate if verifiably available on both arms. If unavailable at baseline, precommit median native average watch time among Reels in one narrow duration band instead. Do not switch outcomes after seeing which is favorable.
- Keep character, voice, duration band (for example 15–20 seconds), caption readability, content category, production standard and CTA stable. Do not weaken A artificially.
- Use original episodes rather than reposting near-identical duplicates. Pair comparable topics/slots, and determine AB versus BA order before production. Keep a seed/order record. Slots are a nuisance factor, not a claim about a universal best time.
- Lock the primary variable for this test. Continue required quality fixes, but log them as co-interventions. If a fix materially changes pacing/audio/story alongside the hook, mark that pair exploratory or restart the comparison transparently.

| Checkpoint | Evidence and decision |
|---|---|
| Day 7 | Verify collection and delivery, inspect the first roughly three posts, establish ranges and capability gaps. Correct broken links/captions immediately. No growth winner declaration. |
| Day 14 | Approximately three posts per arm at comparable age. Inspect whether direction repeats. Report a provisional pattern only; collect missing 72h snapshots and freeze any revised hypothesis as a new experiment. |
| Day 30 | Target six comparable posts per arm with mature 72h data. Keep the final seven-day snapshots pending until they mature, potentially through day 37. Adopt, revise or retire this tested device; publish uncertainty plainly. |

### Decision thresholds, chosen for this project

These are operating thresholds, not Instagram benchmarks or statistical proof.

- A candidate needs at least six comparable posts per arm and at least 1,000 summed post-reach exposures per arm before broad rollout. Both conditions matter; one viral post cannot replace replication. If the primary metric is an event rate, also seek at least 20 target events per arm. With fewer, say “too sparse” and use qualitative learning.
- Provisional attention win: median skip rate lower by at least 5 percentage points, or the preselected fallback watch-time metric higher by at least 15%; the favorable direction appears in at least four of six matched pairs. A follow-up block of three matched pairs should repeat the direction before calling it the durable default.
- Guardrails: no loss of essential first-time-viewer clarity; no safety issue; no repeated reduction greater than 20% in secondary follow/share yield when there are enough events to interpret those rates; no more than 20% extra production time without a corresponding useful gain.
- Retire or revise the device if an adequately sampled primary outcome worsens by at least 15% (or skip rate rises 5 points) and at least four of six pairs agree. At tiny samples, retire only for a clear creative/usability failure, not alleged algorithm rejection.
- If sample conditions are unmet by day 30, the result is inconclusive. The 30-day report is still due. Either continue the same bounded test with an explicit next evidence target or choose the lower-cost, clearer version without calling it a proven growth winner. Do not manufacture a deadline to stop a requested ongoing monitor.
- Zero qualified-use reports after at least 100 measured delivery actions warrants revising the freebie or feedback invitation; it does not prove nobody used it. Zero deliveries after six relevant placements calls for checking visibility, link function and offer clarity before building more freebies.
- Harassment uses the contract's immediate pause. Repeated production failures or apathy trigger a Jared review, not an autonomous rule change or account deletion.

### Why these results remain uncertain

Distribution is neither randomized nor stable. Viewers repeat, episodes differ, rival attention spills over, and Instagram chooses who sees a post. The two accounts are **not** a treatment/control pair. A larger post can attract a colder audience and lower its rates while producing more followers. Compare raw scale and rates together.

Use per-post medians, full ranges and paired directions. At six pairs uncertainty remains large. Avoid a binomial confidence interval over shares/reach: actions are not necessarily one independent success per unique viewer. For a genuinely deduplicated binary survey cohort, a Wilson interval is reasonable; absent deduplication, show raw counts and limits. Do not declare statistical significance from this operational threshold, a one-post spike or a favorable metric selected afterward.

## 5. Next experiments, in order

Only advance when the previous bottleneck is understood. Keep discoverability hygiene constant during creative tests.

1. **Hook clarity:** visible failure first versus existing opening. Primary attention metric as above.
2. **Reason to return:** a precise next-episode promise versus the existing follow CTA, after the entertainment payoff. Primary native Reel follows per 1,000 reached; secondary shares, with event-volume gates.
3. **Useful freebie:** one short, episode-linked craft aid versus a generic bundle. Primary evidence-of-use reports and substantive feedback. This is a demand study, not a controlled conversion claim.
4. **Search wording:** a clear, natural topic phrase in captions versus current wording across comparable originals. Track search-source discovery only if Insights exposes it; otherwise describe total discovery changes as observational. Do not attribute all non-follower reach to SEO.

Instagram's own Search explanation says it matches search text against account/post text and personalizes results. Use a stable identity, descriptive topic language and relevant captions; the explanation is from 2021, not a current ranking-weight guarantee. Test whether people can understand and find the project, rather than promise hashtag-driven virality. [Instagram Search explanation](https://about.instagram.com/blog/announcements/break-down-how-instagram-search-works)

For the repo/freebie pages use descriptive titles, short summaries, version/date and actual worked examples. Keep the public premise consistent. Accessible descriptions describe the image; they are not a place to stuff unrelated keywords. Avoid asking people to spam tags, repeat votes, follow/unfollow or brigade the rival. A legitimate share is most useful when the joke or tool gives someone a reason to send it to a friend.

## 6. Freebie delivery and privacy

The first freebie should be something demonstrated in an episode: for example a one-page silent-read action checklist, a caption-timing checklist with a before/after, or a short failure-log template. It must work without buying a tool, creating an account or surrendering an email address. Include one worked example, clear reuse rights and the tested version. Do not promise revenue or guaranteed growth.

### Ranked no-cost routes

1. **Existing public GitHub repository, Dotter-owned folder:** best immediate fit. Add the approved file plus a short mobile-readable README and stable download link; a versioned release asset can expose aggregate download counts. No new vendor or tracking is needed. GitHub is less friendly for casual mobile viewers, so click-test the full path. Asset downloads are requests, not unique humans or successful use. Repo traffic has a 14-day window and requires suitable access; it is optional and was not fetched here. [GitHub release data](https://docs.github.com/en/rest/releases/releases), [traffic API](https://docs.github.com/rest/metrics/traffic)
2. **Existing project site with a simple ungated resource page:** best viewer experience if its publication/access is already approved. Link the versioned file and give a preview. Begin with no added analytics; if desired later, Cloudflare offers free privacy-first web analytics without cookies/localStorage or fingerprinting, but it is not automatically a custom conversion-event system. Validate its exact data before making funnel promises. No new analytics were configured. [Cloudflare analytics](https://www.cloudflare.com/web-analytics/)
3. **Optional Tally feedback form linked after delivery:** best lightweight usage evidence. Its free plan supports unlimited forms/submissions subject to fair use. Ask “Did you try it?”, “Which step?”, “What happened?” and an optional suggestion. No name, handle or email is needed. Anonymous repeated submissions cannot be proved unique. Free self-notifications do not imply free respondent-email automation. [Tally pricing](https://tally.so/pricing)
4. **GitHub Pages documentation site, only if an existing site is unsuitable:** free for a public-repository project, but adds setup and is inappropriate as primarily commerce/SaaS hosting. Keep it a project resource page, not a storefront. [GitHub Pages limits](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits)

Do not choose Metricool SmartLinks as a free default; it is paid under the current plan table. Email-gated delivery and comment-to-DM flows add permission, maintenance and attribution problems before we know the freebie is wanted.

### Evidence ladder

- **Interest:** landing-page view or link tap. State which one was measured.
- **Delivery:** download request, open-template click or file-delivery event. This is not verified use.
- **Reported use:** optional feedback identifies a step tried and a concrete result. Report submission count and duplicate uncertainty.
- **Observed artifact use:** a participant voluntarily shares an example and permits its use as evidence. Keep private unless explicitly authorized for publication.

Never infer someone’s real identity, match emails to Instagram handles, install a tracking pixel, fingerprint visitors, or collect sensitive information for this study. Avoid publishing handles/screenshots of freebie users or private feedback. Aggregate counts and deidentified themes are enough. Access to a file is not consent to marketing.

## 7. Attribution without false precision

Use consistent lowercase campaign tags on approved destination links:

`utm_source=instagram&utm_medium=organic_social&utm_campaign=motto_vs_dotter_s1&utm_content=dotter_bio`

For a genuinely episode-specific clickable placement, use a value such as `dotter_e003_story`. A shared evergreen bio link should remain labeled `dotter_bio`; changing its tag each time does not prove which Reel caused a visit. Use `motto_bio` for the other account only when Jared approves that placement. Do not put usernames, emails or other personal data in parameters. UTM conventions are documented by [Google](https://support.google.com/analytics/answer/10917952?hl=en).

UTMs label a link; they do not collect analytics by themselves. GitHub alone does not make UTM campaign reporting appear. Keep them for portability only until an approved destination actually records them. If measuring with an optional form, a campaign hidden field can record the clicked placement, not the person's originating exposure.

Attribution loses copied/stripped links, cross-device paths and later organic visits; some referrers may be absent. Do not claim “this Reel caused X sales” or link an Instagram follower to a site visitor. Report direct observed clicks/deliveries, platform-attributed follows and self-reported use separately. This first study has no sales outcome unless Jared later authorizes a real offer and its measurement.

## 8. Weekly retro and autonomous improvement boundary

Use the existing Sunday retro and add:

1. Official follower totals and seven-day absolute change, with evidence timestamp.
2. Experiment assignment, eligible posts, snapshot maturity and missing-data reasons.
3. Raw primary metric per post, median/range, matched-pair direction, and secondary action counts/rates.
4. What the audience actually said or used, summarized without exposing identities.
5. Biggest craft improvement and weakest rubric dimension, each tied to a timecode or observed result.
6. One next change, expected signal and planned check. State whether adopted, exploratory, inconclusive or rejected.
7. Time/cost and any safety or delivery issue.

Dotter can autonomously collect authorized read-only metrics, check links, diagnose failures, prepare private variants, carry forward lessons, and draft delayed methods/retros. Public posts still need Jared's approval. Public logs must respect the 24–48h delay and keep unposted hooks private. Do not edit shared rules, another author's work, account types, access settings or analytics setup as a side effect of optimization.

## 9. CSV template

Companion: `rivalry-measurement-template.csv`. It is a **long-form observation ledger**, with one row per metric per entity/snapshot. Template rows have no observed values. Duplicate the appropriate block for a real Reel, account-week or freebie window; replace the placeholder ID. This avoids forcing unavailable optional metrics into invented zeros.

Required identity fields: `record_type`, `account`, `entity_id`, `measured_at_utc`, `metric_name`, `unit`, `status`, `source_reference`. For Reels add published time and actual age; for period metrics add start/end. Preserve `platform_label` and `scope` (Instagram organic, Instagram+Facebook, paid, or unknown). Derived rows name their exact `denominator_metric` and link their source rows. Formula definitions are in section 3; this CSV intentionally contains raw entries, not hidden formulas.

Keep actual experiment precommitments separately in the methods log: hypothesis, assignment/order, primary outcome, fallback selected before results, population, sample gate, practical effect, guardrails, observation dates and decision. The companion `rivalry-experiment-template.csv` supplies those fields without inventing results.

Validation performed on the templates: rectangular CSV, unique headers, no fabricated metric values, missingness encoded, URL/source fields present. There are no live results or inferred follower counts in these files.
