---
name: zhangliang-web-taste
description: Use when the user asks to build, redesign, critique, review, polish, or improve a webpage, visual dashboard, 可视化看板, 数据看板, 行业地图, 报告可视化, or cares about 高级感, 顶级网站, Hero, 苹果风, Awwwards, 不像PPT, 做网页, 设计网页, 做官网, 网页评审, or 张亮网页审美.
---

# Zhangliang Web Taste

This is the user's personal web-design taste layer. Use it together with `premium-web-workflow`, `imagegen-frontend-web`, `image-to-code`, and GSAP skills when available.

The goal is not generic "nice UI." The goal is to avoid AI-looking PPT pages and push toward real, premium, image-led, interactive websites.

## Core Taste

The user dislikes pages that feel like:

- a PowerPoint cover with a big title, subtitle, and decorative cards
- a huge typographic poster where the title wraps chaotically and the supporting copy is dense
- a static report page with rounded blocks and weak visual subject
- left text / right image with no spatial integration
- a dashboard-like knowledge base when the request is a premium webpage
- white fog, excessive blur, low contrast, and empty translucent containers
- generic AI gradients, purple-blue glow, beige monotone, or card grids
- screenshots pasted as sections instead of real DOM/SVG/canvas

The user prefers pages that feel like:

- a real website with a strong first-viewport signal
- a page built from a chosen visual archetype/design contract, not generic "高级感"
- immersive Hero composition where image, type, and space belong together
- a generated or owned Hero visual asset when no strong asset exists yet
- visual dashboards that feel like designed decision surfaces, not PPT charts pasted into cards
- Apple/Awwwards-level restraint: clean, cinematic, spacious, sharp
- meaningful visual assets: generated hero art, product/robot renders, editorial scenes, textures
- real interactive knowledge objects: SVG diagrams, tabs, filters, matrices, searchable structure
- body illustrations that add memory and rhythm without replacing real data/UI
- motion that guides attention and gives the page continuity
- mobile first viewport that still has identity, Hero, and visual presence

## Premium Prompt References

MotionSites-style prompts are useful when Codex needs a concrete, high-craft implementation target. Use them as a taste amplifier, not as a template to copy.

The preferred operating model has two layers:

- **Direct reuse**: the user chooses a MotionSites design and pastes the official copied prompt. Reproduce it closely first, screenshot-verify it, then adapt.
- **Reference mode**: if the user does not choose a prompt, borrow only the design mechanics and create a custom page.
- **Video replacement**: if the MotionSites composition and video treatment are right but the demo animation is wrong, keep the mechanics and replace only the video asset.

When a MotionSites prompt or similar premium prompt is available:

- Extract the design mechanics: composition, visual subject, type scale, image role, animation, hover states, scroll behavior, and component inventory.
- Replace the demo brand, content, metrics, image URLs, and generic SaaS copy with the user's real material.
- Keep the user's anti-PPT rules above the prompt. If the prompt leads to a side-by-side hero card, generic gradient, or decorative card grid, revise it.
- Do not use paid-only or DMCA-disabled prompt repositories. Use only official visible copy, user-provided prompt text, or high-level pattern summaries.
- For direct reuse, do not start by "making it better." First make it match the copied prompt, then improve or adapt only after the baseline is visible.
- For durable pages, localize critical remote images/videos when licensing permits, and add fallback visuals so the Hero does not collapse if a URL dies.
- If replacing a demo video with Seedance or another generator, preserve the original video's size, crop, duration, loop rhythm, motion intensity, and text-safe area. Do not throw away a good composition just because the asset changed.

Good output is not "this resembles a MotionSites template." Good output is "this uses MotionSites-level craft for the user's actual page."

## Design Contract Taste Gate

When `premium-web-workflow` selects a Web Design Vault Lite archetype, enforce it as a taste contract.

The user does not want a thread to say "I used the skill" and then produce a normal static report. The visible page must prove the contract through composition, asset strategy, motion, and density.

Before accepting a design direction, check:

- Is the selected archetype visible in the first viewport, or only named in a status message?
- Does the Hero have the promised asset path: `image_gen`, owned media, MotionSites direct reuse, confirmed video, or a justified code-native scene?
- Did the page inherit real design mechanics: crop, spacing, typography, material, motion, interaction, and responsive behavior?
- Is there a clear DOM/SVG/canvas vs raster boundary, or did it collapse into pasted images and static cards?
- Would a viewer describe the first screen as a website, product surface, editorial experience, or decision interface rather than a PPT cover?

If the archetype is not visible, treat it as a failure and revise the first viewport before touching lower sections.

Preferred archetype mapping:

- Company homepage / product page: `Apple Cinematic Product` or `MotionSites Liquid Video`
- Public strategic report / industry map / comparison: `Premium Research Dashboard` or `Luxury Minimal Report`
- Podcast / long transcript / learning map: `Data Story Map` with a premium image_gen Hero
- Experimental/high-craft reference page: `Godly Editorial Interactive`
- Body illustration rhythm: Xiaohei 1.0 for logic, Xiaohei 2.0 for situation/story; never as the main Hero

## Hero Rules

Hero is the highest-risk area. If it fails, the whole page feels like PPT.

Default assumption: every polished webpage starts with a real Hero strategy. If the page is not explicitly an internal dashboard, wireframe, or pure documentation page, the agent should first create or source the Hero's visual foundation before building the rest of the page.

Prefer:

- full-bleed or near full-bleed image as a background plate, spatial layer, or immersive scene
- GPT Image / `image_gen` bitmap Hero art when no strong real asset exists
- real HTML title, copy, CTA, and key labels over or within the visual scene
- one strong visual subject with depth, lighting, and negative space
- restrained first-screen copy: one core sentence, not a dense strategic paragraph
- high-quality video background when motion is central to the first impression
- lightweight floating top navigation that does not dominate the first viewport
- a hint of the next section visible below the fold

Avoid by default:

- starting from text sections and adding the Hero asset as an afterthought
- using SVG Hero illustration as the default main visual instead of a generated bitmap image
- using oversized typography, dark grid backgrounds, particles, or glows as a substitute for a real Hero visual asset
- putting a long conclusion paragraph in the Hero's primary copy area
- a large rounded card wrapping the Hero
- left-text/right-image composition unless clearly strongest
- an image trapped inside a right-side card
- fixed left table-of-contents navigation for premium landing pages
- huge white/cream fog overlays that make the page illegible
- hero text baked into an image

Hero visual assets may be generated with image generation. The asset should not contain readable UI text, buttons, labels, tables, or important claims.

If no provided product/image/video asset exists, generate a bespoke Hero visual asset or reference image. For company overview, industry map, research summary, or "four companies quick view" pages, this is especially important: the first viewport should feel like an immersive website, not a report title slide.

Default to `image_gen` bitmap assets for Hero art. Use SVG for diagrams, data objects, icons, lines, and UI overlays, not as the default Hero background/illustration.

If a Hero can be described as "big words on a dark background," it fails unless the whole concept is deliberately typographic and still has excellent spacing, hierarchy, and restraint.

Hero video assets may be generated when they add something a still image cannot: product motion, spatial depth, cinematic atmosphere, or a loop that makes the page feel alive. Background Hero videos should usually be muted, short, locally hosted, and supported by a poster/fallback.

## Image Asset Boundary

This taste layer is not "no images." It is "no screenshot collage."

Use images for:

- Hero atmosphere and visual metaphor
- product, robot, object, scene, or editorial renders
- background plates, material textures, and cinematic environments
- small decorative image moments inside real layouts

Do not use images for:

- important body copy, CTA buttons, tabs, nav, filters
- chart labels, legends, axes, timelines, or business logic
- entire sections that should be rebuilt as DOM/SVG/canvas

Rule of thumb: if the user should click it, copy it, search it, filter it, or learn core knowledge from it, it should be real frontend. If it is atmosphere or subject matter, it can be an image.

## Knowledge Page Mode

For long transcripts, research reports, or learning pages:

- Start with information architecture: claims, actors, timelines, terms, decision recipes, tensions.
- Then design the first viewport as a premium immersive Hero, using a generated or owned visual asset unless explicitly skipped.
- Then make real interactive knowledge objects: SVG diagrams, matrices, tabs, glossary, chapter map, filters.
- Use Ian Xiaohei 1.0 only as body-section explanation breaks for logic/process anchors.
- Use Ian Xiaohei 2.0 scenes only for body-section situation/story/product-evolution moments.
- Xiaohei illustrations should make one idea memorable, not become the page's main design system.
- Still make the Hero visually premium. A knowledge page can be useful without looking like a report cover.
- Do not let the whole page become a sequence of equal cards. Use varied section rhythm.

## Dashboard Taste

For 可视化看板 / 数据看板:

- public-facing or presentation dashboards should still open with a premium visual Hero or narrative first viewport
- internal operational dashboards should be dense, calm, and highly usable rather than cinematic
- charts, filters, tables, legends, maps, and KPI cards should be real interactive UI
- avoid static chart screenshots, decorative metric cards, and PPT-like data panels
- use motion to reveal relationships, guide scanning, and connect views, not to distract from the data

## Review Mode

When reviewing an existing page, inspect rendered desktop and mobile screenshots when possible.

Output:

1. Verdict: real premium website, useful internal tool, PPT/report, or unfinished prototype.
2. Top 5-8 issues by impact.
3. For each issue: symptom, why it weakens the page, exact fix.
4. Separate Hero diagnosis: visual subject, spatial integration, title scale, nav pressure, next-section hint.
5. Image asset audit: where to generate images, where to rebuild DOM/SVG/canvas.
6. Motion/interactivity audit: missing hover, scroll, GSAP, dead controls, weak feedback.
7. Mobile audit: first viewport, text fit, horizontal overflow, dense diagram handling.
8. First patch plan: prioritize Hero before broad restyling if the first viewport feels PPT.

Do not stop at adjectives like "高级一点." Convert critique into implementation instructions.

## Current Failure Patterns To Catch

- **Right-side image card**: even with a good generated image, the page still feels like PPT if the image is boxed beside text. Fix by integrating the image into the whole first viewport.
- **Large white fog card**: low-contrast glass/fog can look premium in isolation but makes a webpage feel like a washed-out deck. Fix by adding a real visual subject, clearer contrast, and less container dominance.
- **Sidebar knowledge system**: fixed left navigation makes learning pages feel like a backend/wiki. For premium first view, prefer top floating nav; keep deep navigation lower or as secondary UI.
- **Card grid autopilot**: three-column equal cards are useful but should not become the whole design language. Add timelines, diagrams, matrices, image-led bands, and scroll moments.
- **Decorative motion only**: motion must reveal, connect, pin, or guide. Floating ornaments without narrative do not count.
- **Giant text wall Hero**: oversized title plus dense paragraph creates visual noise, not premium impact. Fix by reducing copy, adding a primary visual subject, and moving detailed judgment below the fold.

## Browser Verification Gate

Before calling a page good:

- Capture desktop first viewport.
- Capture mobile first viewport.
- Check that the Hero image or scene is visible and not merely a side asset.
- Check no horizontal overflow on mobile.
- Check title, buttons, and core text are real DOM.
- If the screenshot can still be described as "a PPT slide," iterate.
