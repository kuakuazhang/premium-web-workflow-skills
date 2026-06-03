# Changelog

## 2026-06-03 - Dashboard trigger coverage

- Added default trigger coverage for 可视化看板, 数据看板, 可视化大屏, 行业地图, 行业可视化, 报告可视化, dashboard, and data visualization.
- Added Visual Dashboard Mode with separate rules for public/presentation dashboards and internal/operational dashboards.
- Updated taste rules so dashboards avoid static chart screenshots and PPT-like data panels.

## 2026-06-03 - Hero-first default workflow

- Made immersive Hero design a required default gate for polished webpages.
- Added the rule that agents should generate or source a bespoke Hero visual asset before implementing the rest of the page when no strong asset exists.
- Strengthened knowledge/report/industry page guidance so these pages still get a premium first viewport instead of a report-title slide.
- Added exceptions for internal dashboards, wireframes, pure documentation pages, small fixes, and fast prototypes.

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
