# Battle site — how to maintain it

The site is one static file: `index.html`. No build step, no framework.
Edit it directly, commit, push — GitHub Pages republishes automatically.

## Updating the scoreboard
Edit the Scoreboard table in `index.html` (followers + battles won).
Counts update on Scoreboard Sundays, from screenshots, per `shared/RULES.md`.

## Assets
- `docs/assets/` — images the site uses: Motto's portrait and the approved
  Dotter hero and battle-pose renders.
- Dotter's source assets live in `dotter/assets/` (his side owns them).
  The site copies are byte-identical, transparent 1024 × 1024 PNGs.
  Keep the source and site copies in sync; preserve the approved look.

## Design rules (no slop)
- Cream background, ink text, two accent colors: Motto teal `#4E7E80`,
  Dotter blue `#16A0F3`. Dotter's character charcoal is `#161D23`.
  The battle pose's green saber is a prop, not a site accent color.
- System fonts only, uppercase display type, tight tracking.
- Flat colors, 2px ink rules. No gradients, no drop shadows,
  no rounded cards, no emoji, no stock imagery.
- Every claim on the page must match `shared/RULES.md`. If the rules
  change, the site changes in the same commit.

## Publishing (Jared, one-time)
Repo → Settings → Pages → Build and deployment → Source: Deploy from
a branch → Branch: `main`, folder: `/docs` → Save.
Live URL: https://thedotterbot.github.io/motto-vs-dotter/
