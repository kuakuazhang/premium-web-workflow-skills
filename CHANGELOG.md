# Changelog

## 2026-06-05 - Reference forensics and GSAP motion gates

- Added `references/reference-forensics-protocol.md` for concrete website references: original-site access checks, screenshot evidence, visual DNA extraction, mechanics-to-content mapping, side-by-side verification, and Chinese typography adaptation.
- Strengthened Awwwards/Godly/original-site reference handling so a named reference is not enough; the implementation must prove what was opened, captured, mapped, and matched.
- Added mechanical preflight taste checks inspired by taste-checking workflows: Hero headline fit, Chinese line-height, CTA/nav fit, section-layout repetition, and real DOM/SVG/canvas boundaries.
- Added GSAP motion translation guidance: use core tweens, timelines, ScrollTrigger pin/scrub, matchMedia/reduced-motion, React cleanup, and performance-safe transform/opacity animation.
- Clarified that motion must reveal hierarchy, connect sections, show state, or make a product/visual subject feel alive; decorative drift alone does not count.

## 2026-06-05 - Awwwards self-evolution workflow

- Added an Awwwards-only self-evolution experiment with 3 desktop-first rounds: creative Skill intro, visual report, and product/company page.
- Added `Awwwards Reference Scout`: when no reference is selected for an experiment, find 3 concrete Awwwards pages and choose 1 main reference before designing.
- Added `Specific Site First`, `Style Diversity Gate`, `Self Evolution Loop`, `Low Disturbance Mode`, `Evidence Before Rule`, and `Desktop First Experiment Mode`.
- Added screenshot evidence and experiment notes under `experiments/self-evolution-v1/`.
- Clarified that experiment rounds can defer mobile fine-tuning, while production delivery should return to desktop and mobile verification.

## 2026-06-04 - Reference accountability and headline rhythm

- Updated the showcase page Hero and major section headings to use short manual Chinese display lines.
- Added a Reference Accountability Gate so agents must state whether work is user-selected reference, agent-selected reference, or no-reference experiment.
- Added rules to catch repeated default Hero molds such as left-heavy title blocks, right-side visual mass, repeated metric strips, and reused dark green styling.
- Added Chinese display headline guidance: rewrite long sentence headings before CSS tuning, avoid punctuation in display-scale H1, and screenshot-check desktop/mobile wrapping.
- Updated Web Design Vault Lite contracts to include reference basis and display headline rhythm.

## 2026-06-04 - Web Design Vault Lite and showcase page

- Added `references/web-design-vault-lite.md` to turn premium references into executable design contracts.
- Added archetype routing for Apple Cinematic Product, MotionSites Liquid Video, Godly Editorial Interactive, Premium Research Dashboard, Data Story Map, and Luxury Minimal Report.
- Updated `premium-web-workflow` so polished webpage work starts with an archetype/design contract before Hero planning and implementation.
- Updated `zhangliang-web-taste` with a Design Contract Taste Gate to reject pages where the archetype is named but not visible.
- Added a promotional showcase webpage for the skill package so the workflow can be reviewed against its own standards.

## 2026-06-04 - Ian Xiaohei Scenes 2.0 integration

- Added `ian-xiaohei-scenes` as a fifth bundled third-party skill.
- Included its required `assets/examples/` master images, references, LICENSE, and NOTICE.
- Added 1.0 vs 2.0 routing: `ian-xiaohei-illustrations` for logic/process explanation, `ian-xiaohei-scenes` for real-object situations, stories, project retrospectives, and long-scroll scenes.

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
