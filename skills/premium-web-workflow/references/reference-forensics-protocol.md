# Reference Forensics Protocol

Use this when a real website is selected as a reference from Awwwards, Godly, MotionSites, Variant, Impeccable, Apple, or a user-provided URL.

The goal is not to say "this site is premium." The goal is to prove what was inspected, extract the mechanics, map them onto the user's content, and verify the implementation side by side.

## 1. Access And Evidence

Before claiming a reference was used:

1. Open the Awwwards/Godly/library page.
2. Open the original site URL.
3. If `https` fails, try the canonical `http` URL, no-`www`, and `www` variants.
4. Record the working URL. If the original site is unavailable, mark the reference as thumbnail-only and do not claim a strong replication.
5. Capture desktop screenshots:
   - reference Hero
   - reference below-fold section
   - one key interaction or motion state when possible
6. Capture the same screenshots for the implemented page.

No screenshot means no strong reference claim.

## 2. Visual DNA Extraction

Extract the reference in concrete variables, not adjectives:

- palette: exact dominant colors, accent colors, neutral colors, contrast level
- typography: font character, size range, weight, line-height, tracking, display rhythm
- layout skeleton: grid, major zones, alignment, safe areas, first-fold height
- Hero architecture: centered, bottom-left, editorial offset, full-bleed, object stage, gallery, horizontal strip, type-led, product-led
- section system: gallery, editorial story, matrix, timeline, scrollytelling, pinned scene, proof rail, product scenes, command surface
- container logic: radius, borders, shadows, glass, cards, panels, separators, negative space
- image/video role: background, subject, proof, texture, product object, atmosphere, interaction surface
- motion language: load, scroll, hover, continuous loops, pinning, scrub, parallax, carousel, gallery, mask, reveal
- interaction states: nav, CTA, cards, tabs, filters, cursor, media controls

If a key variable is unknown, say so. Do not fill gaps with generic "premium" taste.

## 3. Mechanics-To-Content Mapping

Before implementation, build a mapping table:

| Reference mechanic | Why it matters | User content mapped to it | Build medium | Copy boundary |
| --- | --- | --- | --- | --- |
| Example: centered product object | creates launch feel | user's product/system metaphor | CSS/Canvas/image asset + HTML copy | do not copy logo or product image |

Every major section should have a reference mechanic or a deliberate custom mechanic. Do not paste the user's content into a generic section shell.

## 4. Rebuild Priority

Classify each reference feature:

- **Must match**: visual DNA needed for the reference to be recognizable.
- **Adapt**: keep the mechanism but change content, scale, tone, or asset.
- **Skip**: not relevant to the user's content or too costly for the current pass.
- **Do not copy**: logo, brand text, proprietary images, videos, product UI, named customers, or code.

For Awwwards self-evolution rounds, at least the Hero architecture, dominant palette, typography rhythm, and one body-section skeleton must be `Must match` or `Adapt`. Otherwise the reference was not actually used.

## 5. Chinese Typography Adaptation

English reference typography cannot be transferred blindly to Chinese.

When adapting display Chinese:

- do not copy tight English line-height directly
- reduce negative tracking; Chinese display text often needs more air
- rewrite long H1 sentences into short paired lines
- avoid punctuation in display-scale headings unless the reference uses it successfully and Chinese still reads cleanly
- screenshot-check all major Chinese H1/H2/CTA headings

If the reference uses ultra-tight English display type, adapt the rhythm, not the exact line-height.

## 6. GSAP Motion Translation

When the reference depends on motion, translate the observed motion into a GSAP plan before coding.

Choose the smallest motion layer that preserves the reference effect:

- CSS transitions: simple hover color, opacity, transform.
- GSAP core tween: entrance, reveal, stagger, mouse-follow, object drift.
- GSAP timeline: choreographed load, multi-step Hero reveal, sequential section storytelling.
- ScrollTrigger: scroll reveal, pinned section, scrubbed parallax, sticky product/object transition, horizontal gallery.
- Canvas/WebGL + GSAP: dense particles, complex abstract fields, 3D-like scene control.

GSAP implementation rules:

- prefer `x`, `y`, `scale`, `rotation`, `autoAlpha` over layout properties
- use `gsap.timeline()` instead of delay chains for multi-step motion
- use labels for readable choreography
- put ScrollTrigger on the top-level tween or timeline
- do not animate the pinned element itself; animate children inside it
- for fake horizontal scroll, pin the section and move inner content with `ease: "none"`
- use `gsap.matchMedia()` for desktop/mobile and `prefers-reduced-motion`
- clean up GSAP contexts in React with `useGSAP()` or `ctx.revert()`
- remove ScrollTrigger markers before delivery
- avoid hundreds of simultaneous tweens; batch, stagger, virtualize, or simplify

Motion must reveal hierarchy, connect sections, show state change, or make a product/visual subject feel alive. Decorative drifting that does not support meaning is not enough.

## 7. Side-By-Side Match Gate

Before claiming a reference match, compare screenshots side by side:

- Hero geometry: major zones and subject role match
- palette/material: dominant color and surface logic match
- typography rhythm: scale, line-height, and density feel adapted but faithful
- section skeleton: at least one below-fold section inherits a real mechanism
- motion: observed reference motion has an implemented equivalent or a declared skip
- content completeness: user's page contains the real content, not only a Hero
- DOM boundary: text, buttons, nav, charts, tables, and labels are real DOM/SVG/canvas

Score each item 1-5. If reference fidelity is below 4/5, do not say the page is reference-led. Either rebuild from the reference or choose a better reference.

## 8. Failure Signals

Stop and rebuild when:

- the original site was never opened or was inaccessible but not declared
- the implemented page only shares a broad category with the reference
- only the color was changed, while the Hero skeleton stayed generic
- the reference has a strong palette but the implementation uses unrelated colors
- the reference is motion-led but the implementation is static
- the page keeps the agent's default metric strip, card grid, glass panel, or left-copy/right-visual mold
- Chinese display headings inherit tight English line-height and collide visually

The fix is usually a new mechanics mapping and a rebuilt skeleton, not more polish.
