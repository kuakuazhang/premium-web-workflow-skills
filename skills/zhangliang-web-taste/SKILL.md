---
name: zhangliang-web-taste
description: Use when the user asks to build, redesign, critique, review, polish, or improve a webpage and cares about 高级感, 顶级网站, Hero, 苹果风, Awwwards, 不像PPT, 做网页, 设计网页, 做官网, 网页评审, or 张亮网页审美.
---

# Zhangliang Web Taste

This is the user's personal web-design taste layer. Use it together with `premium-web-workflow`, `imagegen-frontend-web`, `image-to-code`, and GSAP skills when available.

The goal is not generic "nice UI." The goal is to avoid AI-looking PPT pages and push toward real, premium, image-led, interactive websites.

## Core Taste

The user dislikes pages that feel like:

- a PowerPoint cover with a big title, subtitle, and decorative cards
- a static report page with rounded blocks and weak visual subject
- left text / right image with no spatial integration
- a dashboard-like knowledge base when the request is a premium webpage
- white fog, excessive blur, low contrast, and empty translucent containers
- generic AI gradients, purple-blue glow, beige monotone, or card grids
- screenshots pasted as sections instead of real DOM/SVG/canvas

The user prefers pages that feel like:

- a real website with a strong first-viewport signal
- immersive Hero composition where image, type, and space belong together
- Apple/Awwwards-level restraint: clean, cinematic, spacious, sharp
- meaningful visual assets: generated hero art, product/robot renders, editorial scenes, textures
- real interactive knowledge objects: SVG diagrams, tabs, filters, matrices, searchable structure
- motion that guides attention and gives the page continuity
- mobile first viewport that still has identity, Hero, and visual presence

## Premium Prompt References

MotionSites-style prompts are useful when Codex needs a concrete, high-craft implementation target. Use them as a taste amplifier, not as a template to copy.

The preferred operating model has two layers:

- **Direct reuse**: the user chooses a MotionSites design and pastes the official copied prompt. Reproduce it closely first, screenshot-verify it, then adapt.
- **Reference mode**: if the user does not choose a prompt, borrow only the design mechanics and create a custom page.

When a MotionSites prompt or similar premium prompt is available:

- Extract the design mechanics: composition, visual subject, type scale, image role, animation, hover states, scroll behavior, and component inventory.
- Replace the demo brand, content, metrics, image URLs, and generic SaaS copy with the user's real material.
- Keep the user's anti-PPT rules above the prompt. If the prompt leads to a side-by-side hero card, generic gradient, or decorative card grid, revise it.
- Do not use paid-only or DMCA-disabled prompt repositories. Use only official visible copy, user-provided prompt text, or high-level pattern summaries.
- For direct reuse, do not start by "making it better." First make it match the copied prompt, then improve or adapt only after the baseline is visible.
- For durable pages, localize critical remote images/videos when licensing permits, and add fallback visuals so the Hero does not collapse if a URL dies.

Good output is not "this resembles a MotionSites template." Good output is "this uses MotionSites-level craft for the user's actual page."

## Hero Rules

Hero is the highest-risk area. If it fails, the whole page feels like PPT.

Prefer:

- full-bleed or near full-bleed image as a background plate, spatial layer, or immersive scene
- real HTML title, copy, CTA, and key labels over or within the visual scene
- one strong visual subject with depth, lighting, and negative space
- lightweight floating top navigation that does not dominate the first viewport
- a hint of the next section visible below the fold

Avoid by default:

- a large rounded card wrapping the Hero
- left-text/right-image composition unless clearly strongest
- an image trapped inside a right-side card
- fixed left table-of-contents navigation for premium landing pages
- huge white/cream fog overlays that make the page illegible
- hero text baked into an image

Hero visual assets may be generated with image generation. The asset should not contain readable UI text, buttons, labels, tables, or important claims.

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
- Then make real interactive knowledge objects: SVG diagrams, matrices, tabs, glossary, chapter map, filters.
- Still make the Hero visually premium. A knowledge page can be useful without looking like a report cover.
- Do not let the whole page become a sequence of equal cards. Use varied section rhythm.

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

## Browser Verification Gate

Before calling a page good:

- Capture desktop first viewport.
- Capture mobile first viewport.
- Check that the Hero image or scene is visible and not merely a side asset.
- Check no horizontal overflow on mobile.
- Check title, buttons, and core text are real DOM.
- If the screenshot can still be described as "a PPT slide," iterate.
