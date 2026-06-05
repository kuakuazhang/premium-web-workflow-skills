# Chinese Layout And Evidence Gate

Use this for Chinese webpages, visual reports, strategy pages, company pages, and reference-led work with screenshots or evidence images.

This protocol borrows portable rules from Chinese PPT design systems, especially strict typography, grid discipline, image-slot logic, screenshot framing, and visual-plus-code review. Do not copy slide-deck horizontal navigation, fixed slide templates, or PPT-only page mechanics into websites.

## 1. Chinese Display Type Scale

Chinese display headings need a separate scale. Do not transfer English H1 size, line-height, or negative tracking directly.

Before setting CSS, classify the headline:

| Chinese headline shape | Web recommendation |
| --- | --- |
| 1 line, <= 8 Chinese characters | can be large; keep line-height around `0.95-1.08` |
| 2 lines, each <= 8 Chinese characters | large but controlled; line-height around `0.98-1.12` |
| 2 lines, any line 9-12 Chinese characters | reduce size; line-height around `1.04-1.16` |
| 3 lines or more | rewrite first; if unavoidable, reduce size and move explanation into subhead |

Rules:

- Rewrite long Chinese display text before tuning CSS.
- Use manual line breaks for H1/H2/CTA display text.
- Avoid punctuation in display-scale Chinese headings unless the reference proves it works.
- Tight English display type may be visually correct in English but wrong in Chinese.
- Section titles need the same check as the Hero, not only the first viewport.

## 2. Weight Ladder

Use a weight ladder instead of one heavy font weight everywhere.

General rule: larger text can be lighter; smaller text must be heavier enough to read.

| Text scale | Recommended weight |
| --- | --- |
| Huge Hero / statement | 200-400 depending on font and contrast |
| Large section heading | 300-500 |
| Medium card heading | 500-650 |
| Body / explanation | 400-500 |
| Meta / kicker / chart label / nav | 500-700 |

Do not set 14-16px Chinese labels or captions in weight 300. They become weak and unreadable, especially inside dashboards, tables, and visual reports.

## 3. Single Accent Rule For Swiss / Research Pages

For Swiss-style, research, report, and institutional visual pages:

- Use near-white / ink / calibrated grey as the base.
- Choose one high-impact accent color only.
- Do not mix multiple saturated accent colors unless the data encoding requires it.
- Avoid gradients, glow, shadow, or glass if the chosen direction is Swiss/institutional.
- Let the accent color mark hierarchy, not decorate every element.

Recommended accent families:

- IKB blue: AI, technology, design, research, institutional clarity.
- Lemon yellow: retail, active, consumer, energetic contrast.
- Lemon green: ecology, emerging technology, future-facing work.
- Safety orange: industrial, warning, urgency, decision points.

## 4. Web Section Skeleton Registry

Do not let the agent free-compose every section from scratch. Before coding a body section, choose a section skeleton.

Common web skeletons:

- immersive Hero / product object stage
- editorial statement / pull-quote section
- matrix / comparison table
- timeline / roadmap
- relationship network / system diagram
- signal map / radar / quadrant
- proof rail / customer or evidence strip
- product scene / use-case scene
- image evidence grid
- screenshot showcase
- map / geography / route section
- CTA / closing decision section

For public creative or high-craft pages, consecutive sections should not share the same skeleton. A 6-8 section page should normally use at least 4 distinct skeleton families.

Each section should be recorded as:

```text
Section:
- content job:
- skeleton:
- why this skeleton:
- primary visual/evidence slot:
- DOM/SVG/canvas/raster boundary:
```

## 5. Shared Content Axis

Premium pages fail when each layer invents its own margins.

Before implementation:

- Define the global content inset or container grid.
- Keep nav, Hero text, body sections, captions, and footer aligned to intentional axes.
- Do not add a second arbitrary horizontal padding inside an already padded wrapper.
- If a section intentionally breaks the axis, make it visibly purposeful: full-bleed image, horizontal gallery, split scene, or pinned object.

If a page feels scattered, inspect axis drift before changing colors or shadows.

## 6. Kicker / Eyebrow Hierarchy

Kicker/eyebrow text is subordinate to the headline.

Rules:

- Put kicker above the display headline by default.
- Do not place kicker and headline in competing left/right columns.
- Do not repeat the same meaning in nav, kicker, and headline.
- Use kickers sparingly; not every section needs one.
- For Chinese pages, kicker can be Chinese, English, or mixed only when it supports the design system. It should not become fake technical jargon.

## 7. Screenshot And Evidence Image Framing

When users provide product screenshots, webpages, dashboards, code, old slides, or evidence images, classify the image before placing it.

Ask or infer:

- Is it fidelity display, beautified screenshot, or redesigned concept image?
- What slot ratio does the section need: `21:9`, `16:10`, `16:9`, `4:3`, `1:1`, or a grid crop?
- Must all text/data remain readable?
- Is sensitive information present?
- Should the screenshot align center, top-left, top-right, bottom-left, or bottom-right?

Programmatic framing is preferred when the screenshot content must remain accurate:

- create a target-ratio canvas
- add a quiet background matching the page style
- place the screenshot with deliberate padding and alignment
- avoid cropping important UI text

Only use image generation to redesign a screenshot when the source is too long, too narrow, too messy, or the user explicitly wants a conceptual UI scene.

## 8. Image Slot Discipline

Images are evidence or atmosphere, not random decoration.

Before generating or placing an image:

- bind it to a section skeleton and slot ratio
- decide cover vs contain before implementation
- keep grouped images at the same height and ratio
- avoid mixing rounded screenshots, shadowed screenshots, square Swiss evidence blocks, and cinematic Hero imagery in the same visual system without reason
- generated images should not contain page chrome, titles, footers, logos, or important readable claims

For Swiss/research pages:

- screenshot/evidence images should usually be square-cornered, no shadow, no heavy radius
- images should act as proof blocks inside the grid
- labels, captions, and explanations remain DOM text

For editorial/magazine pages:

- small radius and subtle editorial shadow are acceptable
- paper, grain, and warm backgrounds can frame screenshots
- still keep screenshot content real and readable

## 9. Visual Plus Code Review

Do not review only code and do not review only screenshots.

After implementation:

1. Open the page in a browser.
2. Let load/entry animation settle.
3. Capture the target viewport.
4. Review the visual result first: title rhythm, axis alignment, image slots, section skeleton variety, nav/footer pressure, evidence readability.
5. Then inspect the code/DOM: headings are text, controls are controls, tables/charts are DOM/SVG/canvas, images are only assets.
6. If visual mismatch exists, diagnose the source:
   - wrong skeleton
   - missing required component
   - overused optional component
   - spacing/axis drift
   - typography scale mismatch
   - image slot mismatch
7. Do not hard-fix a bad skeleton with margin tweaks. Choose a better skeleton.

## 10. Failure Signals

Reject or revise when:

- Chinese H1/H2 is copied from an English reference with ultra-tight line-height.
- Small Chinese labels use thin weight and become unreadable.
- Every section has `kicker + giant heading + cards`.
- Hero and body do not share a coherent content axis.
- A screenshot is placed as a random rounded card without ratio, padding, or purpose.
- A research/Swiss page uses gradients, glass, shadows, or multiple saturated colors by habit.
- Images include titles, page numbers, or UI chrome that should be real DOM.
- The visual screenshot looks passable but DOM is flattened into images.

The fix is design-structural: rewrite display copy, choose a skeleton, define the slot, then implement.
