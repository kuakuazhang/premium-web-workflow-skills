# MotionSites Direct-Reuse And Reference Protocol

Use this reference when a webpage task needs a stronger premium hero, section rhythm, interaction pattern, or implementation prompt.

The user's preferred flow has two layers:

1. **Direct Reuse Mode**: use a MotionSites prompt the user chose from the official site, reproduce it closely, then adapt.
2. **Reference Mode**: if no prompt is selected, use MotionSites only as taste/reference input.

## Current Status

- MotionSites.ai is a commercial prompt library for premium hero sections, landing pages, animated backgrounds, and sections.
- Public website entries with a visible `Copy` button may be used as user-accessible reference prompts.
- Entries marked `Premium` require MotionSites access. Do not bypass authentication or scrape paid-only prompt content.
- The formerly public GitHub prompt repository was unavailable due to a GitHub DMCA takedown notice dated 2026-05-26. Do not rely on that repository, clone it, mirror it, or cache its contents.

## How To Use

When the user asks for a premium webpage, landing page, Hero, or redesign:

### Direct Reuse Mode

Use this when the user says they want to directly use/reuse/copy a MotionSites design, or when they paste a complete MotionSites prompt.

1. If no prompt is pasted yet, open or provide `https://motionsites.ai/` and ask the user to choose a design and paste the official `Copy` prompt.
2. Once the user pastes the prompt, treat it as the primary design spec. Reproduce it first; do not freely redesign it.
3. Create the requested stack and dependencies exactly when practical.
4. Implement the copied prompt before replacing brand/content. The first target is visual and behavioral fidelity.
5. Browser-verify desktop and mobile screenshots.
6. Only after the reproduction is close should you adapt copy, brand, content, colors, or section purpose.

### Reference Mode

Use this when no direct prompt is selected.

1. Treat MotionSites as a design-pattern reference, not a finished template.
2. Extract:
   - composition type: full-bleed hero, centered typographic scene, 3D object stage, editorial image band, scroll narrative, etc.
   - stack assumptions: React, Tailwind, Framer Motion, GSAP, vanilla HTML/CSS, etc.
   - visual system: palette, font feel, spacing scale, depth, lighting, material, image role.
   - motion system: reveal, cursor-follow, marquee, parallax, pinned scroll, magnetic CTA, hover states.
   - component inventory: nav, headline, CTA, cards, gallery, marquee, metrics, diagram, footer.
3. Rewrite the implementation brief for the user's actual content, brand, domain, and assets.
4. Replace all demo names, claims, images, URLs, fake products, fake metrics, and generic copy.
5. Preserve the useful design mechanics, not the original commercial text.

## Asset Hardening

MotionSites prompts often depend on remote video/image URLs. These can fail, expire, rate-limit, or be removed.

For direct reuse experiments:

- It is acceptable to use the remote asset first to verify the reproduction.
- If the page will be kept, shared, deployed, or used as a base for real work, localize critical assets when allowed.

For production or durable local pages:

- Download or otherwise preserve key videos, images, model files, and fonts into the project or the user's own CDN when licensing permits.
- Use local paths first and keep the original remote URL only as a backup source when useful.
- Add a fallback visual layer: poster image, generated static frame, CSS background, or gradient scene.
- If an asset cannot be localized or licensed, replace it with a generated or owned asset before calling the page production-ready.
- Mention any asset whose license or persistence is uncertain.

## Video Replacement Mode

Use this when the MotionSites page itself is visually right, but the demo video is not the user's product, story, or desired motion.

The goal is not to redesign the page. The goal is to preserve the working mechanics and replace the video content surgically.

1. Reproduce the MotionSites prompt first and verify the Hero in browser.
2. Inspect the video as a design asset:
   - rendered size and aspect ratio
   - crop and `object-fit`
   - duration and loop smoothness
   - camera movement and motion intensity
   - brightness/contrast under text
   - text-safe areas
   - whether the video is background texture or main narrative object
3. Create a replacement brief that keeps those mechanics but swaps in the user's actual subject.
4. If generating with Seedance, route through `seedance-video-asset`: estimate price, ask confirmation, generate, download locally, and add fallback.
5. Replace only the video source first. Do not rewrite layout, typography, or CTA placement unless the new video requires minor contrast/crop tuning.
6. Re-check desktop and mobile screenshots.

This is especially useful when the user says: "this template feels good, but the animation/product/video is wrong."

## What To Avoid

- Do not present MotionSites as open source if the current source is a DMCA-disabled repository.
- Do not reproduce long paid prompts in user-facing output.
- Do not copy premium-only prompts unless the user has legitimately provided them in the thread.
- Do not let a MotionSites-style prompt override the user's taste rules: no PPT hero, no screenshot collage, no trapped UI text in images.
- Do not ship a template shell with mismatched content. The reference must be adapted into a real website for the user's purpose.

## Integration With Existing Workflow

Use this before `imagegen-frontend-web` when the visual direction is weak:

```
brief / content
  -> Direct Reuse selection at motionsites.ai, if desired
  -> copied prompt reproduction, if selected
  -> Reference Mode pattern selection, if no direct prompt is selected
  -> Video Replacement Mode, if MotionSites mechanics are good but video content is wrong
  -> custom visual direction for this project, if needed
  -> section-level reference images
  -> real implementation
  -> localize critical external assets
  -> GSAP or motion layer
  -> browser verification
```

For knowledge or transcript pages, use MotionSites mainly for Hero treatment, section rhythm, transitions, and interaction mechanics. Keep learning content as DOM/SVG/canvas.
