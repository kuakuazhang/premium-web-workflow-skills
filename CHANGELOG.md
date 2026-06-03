# Changelog

## 2026-06-03 - Seedance video asset workflow

- Added `seedance-video-asset` as an optional video generation workflow for premium Hero/background video assets.
- Added MotionSites video replacement guidance: preserve useful composition, aspect ratio, duration, loop behavior, and motion rhythm, then replace demo video content with an owned/generated asset.
- Added API key safety rules: no secrets in skills, no secrets in GitHub, use `ARK_API_KEY`, ignored `.env`, or a private backend.
- Added paid API guardrail: estimate cost and ask for explicit confirmation before calling Seedance.
- Added asset hardening rules: download generated `video_url` promptly, store it locally, and add fallback visuals.

## 2026-06-03 - Initial public package

- Published `premium-web-workflow`.
- Published `zhangliang-web-taste`.
- Added MotionSites Direct Reuse and Reference Mode.
- Added anti-PPT, screenshot-collage, Hero, image asset, and browser verification rules.
