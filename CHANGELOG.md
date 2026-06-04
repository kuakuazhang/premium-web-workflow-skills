# Changelog

## 2026-06-04 - Default bitmap Hero image rule

- Clarified that Hero images default to Codex built-in `image_gen` / GPT Image bitmap output.
- Added a rule against using hand-written SVG Hero illustrations as the default main visual.
- Kept SVG for icons, connector lines, charts, diagrams, timelines, UI overlays, and interactive data structures.

## 2026-06-04 - Default GPT image generation path

- Clarified that bitmap image assets default to Codex built-in `image_gen` / GPT Image.
- Clarified that Seedance is only for optional video assets, not image generation.
- Added fallback behavior when `image_gen` is unavailable in a Codex environment.

## 2026-06-04 - Hero readability and asset gate

- Added a failure rule for giant-text Heroes with dense strategic paragraphs.
- Clarified that dark grids, particle dots, glows, and oversized typography do not count as a primary Hero visual asset.
- Required public/presentation pages to generate, source, or explicitly plan a real Hero visual subject when no asset exists.

## 2026-06-04 - Build Web Apps bridge and static report triggers

- Added trigger coverage for 静态HTML, 静态报告, 单文件HTML, 单文件报告, 战略看板, and 可视化网页.
- Added a Build Web Apps bridge rule: `frontend-app-builder` can implement, but `premium-web-workflow` governs design and quality.
- Clarified that "static HTML report" is a delivery format, not a reason to skip Hero-first and premium visual workflow.

## 2026-06-04 - Godly deep reference protocol

- Added Godly as a deep real-site reference layer for premium website effects.
- Added `references/godly-deep-reference.md` with analysis categories, replication brief template, 80-90% match requirements, and non-copy boundaries.
- Updated the default workflow to produce a detailed replication brief before implementing Godly-inspired pages.

## 2026-06-03 - Xiaohei handoff recovery rules

- Added explicit recovery instructions for threads that started before `ian-xiaohei-illustrations` appeared in their available skill list.
- Added a handoff prompt for agents: read the local Xiaohei `SKILL.md`, produce a shot list first, then generate body illustrations.
- Added quality constraints to avoid English text, big titles, PPT layouts, and decorative-only Xiaohei figures.

## 2026-06-03 - Ian Xiaohei editorial illustration integration

- Added `ian-xiaohei-illustrations` as an optional third-party editorial illustration skill with MIT License and NOTICE attribution.
- Added Editorial Illustration Mode to `premium-web-workflow` for Chinese longform, knowledge, report, and podcast pages.
- Clarified that Xiaohei-style illustrations are for middle/body explanatory moments, not the main premium Hero treatment.
- Added `THIRD_PARTY_NOTICES.md`.

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
