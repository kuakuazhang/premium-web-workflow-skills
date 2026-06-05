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

## Default Language Taste

If the user asks in Chinese, the finished webpage should default to Chinese visible copy. This applies even when the chosen reference, copied prompt, or inspiration site is English.

Use English references for the design mechanics, not as a reason to ship English demo text. Translate and rewrite into natural Chinese for:

- nav labels
- Hero headlines and support copy
- CTA buttons
- section headings
- card labels and body copy
- dashboard labels, table headers, filters, legends, and quality notes

Keep proper nouns such as Codex, MotionSites, Godly, GitHub, GSAP, API, and Hero when they read naturally as product or technical names. The surrounding explanatory language should still be Chinese.

For direct reuse of a MotionSites prompt, first reproduce the layout and mechanics, then localize the content into Chinese before final review. If a page remains mostly English after adaptation, treat it as incomplete unless the user explicitly requested English.

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

## Reference Accountability Taste Gate

The user expects reference-led web design when discussing Godly, MotionSites, Variant, Impeccable, or premium web examples. Do not skip that step silently.

Before building a premium page, check:

- Did the user ask to choose or use references?
- Has the agent named a concrete reference path before coding?
- Is the result visibly derived from that reference's mechanics, or did it fall back to the agent's usual layout?

If no specific reference was selected:

- Ask the user to pick one when the work is high-stakes or public-facing.
- If proceeding without asking, explicitly say which archetype is being used and that it is not a direct reference replication.
- Do not claim Godly/MotionSites-level reference work after the fact if no page or prompt was actually inspected.

Composition drift to catch:

- repeated left-heavy title block with large empty left area and right-side visual mass
- identical dark hero rhythm across unrelated pages
- same metric strip under every Hero
- same floating pill nav and dark green accent reused without brand reason
- fixing typography while leaving the underlying composition template unchanged

When the user says "it looks like the same mold," stop polishing and choose a new concrete reference or rebuild the Hero composition from scratch.

## Awwwards Self-Evolution Taste Gate

When the work is an experiment to improve this workflow, default to Awwwards-only scouting unless the user names another source. The user wants low-disturbance progress, not a long debate, but the reference basis must still be visible.

For each experiment round, the agent should:

- Find 3 concrete Awwwards pages, not a mood-board category.
- Choose 1 main reference and say why it fits the current page type.
- State what previous visual mold this round intentionally avoids.
- Borrow mechanics, not brand assets: page geometry, section order, motion rhythm, navigation behavior, visual hierarchy, and raster/DOM boundaries.
- Build all real content into the page. A beautiful Hero alone is incomplete.
- Verify desktop first during experiments. Mobile can wait unless the user asks for production readiness.

Taste failures this gate is meant to catch:

- claiming "Awwwards reference" without naming a concrete Awwwards page
- changing color while keeping the same left-title/right-visual Hero
- reusing the same metric strip, floating pill nav, card grid, or dark-glass rhythm across unrelated pages
- asking the user for repeated subjective feedback before trying a new concrete reference
- writing a new rule into the skill without screenshot evidence and a failure/success note

If an experiment scores below 4/5 on Hero immersion, reference mechanics, Chinese typography, content completeness, or layout difference, the next move is to rebuild from a different reference skeleton. Do not only tune CSS.

## Reference Forensics Taste Gate

The user does not consider a page "reference-led" just because a reference was named. The reference must be opened, screenshotted, decomposed, mapped, and compared.

Before accepting any Awwwards/Godly/original-site reference:

- Verify the original site works. Try `https`, `http`, `www`, and no-`www` when needed.
- Capture the reference Hero and at least one below-fold section.
- Extract visual DNA: palette, typography, line-height, spacing, surfaces, image/video role, motion, and section rhythm.
- Create a mechanics-to-content mapping: what reference mechanic becomes what part of the user's page.
- Capture the implemented page in the same viewport and compare side by side.

Taste failures:

- reference site was never opened
- Awwwards page was inspected but original site failed and that limitation was not declared
- the implementation uses unrelated colors while claiming the reference
- only the broad layout family was borrowed, not the visual DNA
- Chinese type copied English tight line-height and looks squeezed
- lower sections revert to the agent's default cards, metrics, glass panels, or left-right blocks

If any of these happen, say the reference did not land and rebuild from the mechanics map.

## Mechanical Preflight Taste Gate

Borrow this from strong taste-checker skills: stop relying on subjective "looks good" language and run mechanical checks.

Before finalizing a premium page:

- Hero H1 should be short, deliberately broken, and not an accidental long sentence.
- Display Chinese line-height should breathe; do not use ultra-tight English display rhythm directly.
- CTA labels should fit on one line and not wrap.
- Nav should be calm, single-line, and not dominate the first viewport.
- Eyebrows/kickers should be used sparingly; do not put a tiny uppercase label above every section by habit.
- Consecutive sections should not share the same layout family. A page with 6-8 sections should have at least 4 distinct section skeletons when it is a public/creative page.
- Do not repeat the same card grid, metric strip, floating pill nav, dark-glass panel, or bento rhythm across unrelated pages.
- Body sections need their own design logic, not only a good Hero followed by generic content.
- Buttons, tabs, filters, charts, tables, labels, and main copy must remain real DOM/SVG/canvas.

If a page passes visual mood but fails these mechanical checks, it is not done.

## Chinese Layout And Evidence Taste Gate

Borrow the portable parts of Chinese presentation-design systems, but translate them into web rules. This is especially important for Chinese reports, strategy pages, company pages, evidence-heavy pages, and screenshot-heavy visual dashboards.

Chinese display text:

- Classify the headline by length before setting CSS: 1 short line, 2 short lines, 2 long lines, or 3+ lines.
- Do not copy English display line-height into Chinese. Tight English type can look intentional; tight Chinese type often looks squeezed.
- Rewrite 3-line display headlines before styling. Move explanation into the subhead.
- Use manual breaks for H1/H2/CTA display text. Do not let browser wrapping decide the rhythm.
- Check section titles, not only the Hero. Lower-page headings often keep the old awkward sentence problem.

Weight and readability:

- Large display type can be lighter; small Chinese labels, nav, captions, chart labels, and table text must be heavier enough to read.
- Avoid 14-16px Chinese labels in weight 300.
- If a visual report feels weak or blurry, check small-text weight before adding shadows, blur, or glow.

Research / Swiss / institutional pages:

- Use a calibrated near-white / ink / grey base plus one accent color.
- Do not mix arbitrary saturated accents, gradients, glass, glow, and shadows when the chosen style is Swiss or research-like.
- Let accent color mark hierarchy and data state, not decorate every element.

Section skeletons:

- Before coding each body section, choose a skeleton: immersive Hero, editorial statement, matrix, timeline, relationship network, signal map, proof rail, product scene, screenshot showcase, map, or CTA.
- Do not let every section become `kicker + giant heading + cards`.
- Public creative pages with 6-8 sections should normally use at least 4 different skeleton families.
- If the page still looks like the same mold after color changes, rebuild from a different skeleton instead of tuning margins.

Axis and hierarchy:

- Define shared content axes for nav, Hero, body, captions, and footer.
- Do not add arbitrary inner padding inside already padded wrappers.
- Kicker/eyebrow text belongs above the headline and stays subordinate. It should not compete in a separate column or appear above every section by habit.

Screenshots and evidence images:

- Classify each image before placing it: fidelity display, beautified screenshot, or redesigned concept image.
- Pick a slot ratio first: `21:9`, `16:10`, `16:9`, `4:3`, `1:1`, or a grid crop.
- If the screenshot is evidence, preserve readability and use programmatic framing instead of AI-redrawing it.
- Generated images should not contain page chrome, large titles, footers, logos, or important readable claims.
- Labels, captions, buttons, filters, charts, tables, and explanations stay as real DOM/SVG/canvas.

Review method:

- Review the browser screenshot first: title rhythm, content axis, image slots, skeleton variety, and evidence readability.
- Then inspect DOM/code boundaries: important content must not be flattened into images.
- If the visual result fails, diagnose skeleton, slot, axis, or type-scale mismatch before changing colors.

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

## Chinese Display Headline Taste

The user is sensitive to awkward Chinese headline wrapping. A premium page fails if the large H1, section title, or closing CTA headline becomes a full sentence broken by commas, full stops, and browser auto-wrap.

Prefer:

- short paired lines with manual breaks
- no punctuation in display-scale H1
- strong parallel rhythm, such as `先定风格 / 再写网页`
- subhead for explanation, not the H1
- screenshot review of the exact desktop and mobile wrapping
- rewriting copy first, then adjusting CSS

Avoid:

- full explanatory sentences as Hero H1
- Chinese comma/full stop dangling at line ends
- `让 Codex 先懂网页，再开始写网页。` style large headings
- three-line accidental wraps caused by viewport width
- improving only the Hero title while leaving lower section titles as long sentence headings

If the screenshot shows awkward display headline rhythm, rewrite the heading into designed lines first. Do not treat it as a CSS-only issue.

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
