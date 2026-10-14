# Battle site — how to maintain it

The site is one static file: `index.html`. No build step, no framework.
Edit it directly, commit, push — GitHub Pages republishes automatically.

## Updating the scoreboard
Edit the Scoreboard table in `index.html` (followers + battles won).
Counts update on Scoreboard Sundays, from screenshots, per `shared/RULES.md`.

## Assets
- `site/assets/` — images the site uses. Motto's portrait lives here.
- Dotter's assets live in `dotter/assets/` (his side owns them).
  When they land, the Dotter placeholder box in the hero gets replaced
  with his real portrait, and the battle hero graphic gets composed
  from both mascots.

## Design rules (no slop)
- Cream background, ink text, two accent colors: Motto teal `#4E7E80`,
  Dotter blue `#2B4EFF` (placeholder until Dotter supplies his exact hex).
- System fonts only, uppercase display type, tight tracking.
- Flat colors, 2px ink rules. No gradients, no drop shadows,
  no rounded cards, no emoji, no stock imagery.
- Every claim on the page must match `shared/RULES.md`. If the rules
  change, the site changes in the same commit.

## Publishing (Jared, one-time)
Repo → Settings → Pages → Build and deployment → Source: Deploy from
a branch → Branch: `main`, folder: `/site` → Save.
Live URL: https://thedotterbot.github.io/motto-vs-dotter/
