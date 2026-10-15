# Tracking Sheet — spec

Live sheet: https://docs.google.com/spreadsheets/d/12F1LB62pMgn0eRVX5gKTn0fidmS6QDoQ08K6g3lu2Ts/edit

One shared Google Sheet. Three tabs. Motto and Dotter fill their own
tab weekly; never blend the two sides. The sheet is the report — no
other tool is the report.

## Tabs

### `Motto` and `Dotter` (identical layout, one row per post, any format)

| Column | What goes here |
|---|---|
| Date posted | YYYY-MM-DD |
| Format | Reel / Carousel / Story / Static |
| Post slug | e.g. `ep02-first-video-lessons` |
| Views | From Business Suite CSV |
| Reach | From Business Suite CSV |
| Non-follower reach % | `= Reach_nonfollower / Reach` |
| Saves | Business Suite |
| Shares (sends) | Business Suite |
| Saves + shares per 1K reach | `= (Saves + Shares) / Reach * 1000` |
| Comments | Business Suite |
| PACK comments | Count of comments saying PACK (reels only; blank otherwise) |
| PACK rate | `= PACK comments / Views` (reels only; blank otherwise) |
| New follows (post) | Follows attributed to the post |
| Follows per 1K views | `= Follows / Views * 1000` |
| DMs sent | Mini-pack deliveries |
| DM replies | Replies to the DM |
| Emails captured | Emails collected from this post |
| DM-to-email rate | `= Emails / DMs sent` |
| Buyers | Attributed buyers (UTM + self-report) |
| Revenue | Attributed revenue |
| Story-only: sticker taps / replies / exits | Business Suite story metrics (stories only; blank otherwise) |
| Carousel-only: swipe-through % | Share of viewers who reached the last card (carousels only; blank otherwise) |

### `Weekly_Rollup` (one row per week, per side)

| Column | What goes here |
|---|---|
| Week | Monday date |
| Side | Motto / Dotter |
| Reels posted | Count (reels only; stories/carousels/statics counted in the post log, not here) |
| Posts posted (all formats) | Count of all posts (reels + carousels + stories + statics) |
| Total views / reach | Sums |
| Funnel rates (week) | PACK rate, DM-to-email, email CTR, email-to-buyer |
| Revenue per subscriber | `= Revenue (trailing) / Subscribers` |
| Experiment | The ONE experiment that week |
| Result | What would prove it worked + what happened |

## Rules
- Decision metrics only (see table). Views, likes, follower count
  alone, email open rate alone never decide anything.
- Weekly ritual (~30-45 min): update from Business Suite CSV +
  ManyChat + email + Gumroad, compute funnel rates for the week +
  trailing 4-week average, answer the 8 ritual questions (in the
  deep-research report §4), pick ONE experiment for next week.
- No external benchmarks exist for view-to-PACK, comment-to-email,
  or DM-to-email. The first 2 weeks establish our own baseline.
- UTMs on every link: `utm_source=instagram`,
  `utm_medium=dm|bio|story`, `utm_campaign=<reel-slug>`,
  `utm_content=motto|dotter`.
- Who builds it: Motto creates the Sheet once Google Sheets is
  connected (see lane message 2026-10-14-2156Z). Dotter fills his
  tab. If Dotter can create it sooner, he may — same spec.
