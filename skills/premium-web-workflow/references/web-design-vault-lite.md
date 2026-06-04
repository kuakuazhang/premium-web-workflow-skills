# Web Design Vault Lite

Use this reference before building polished webpages, public visual dashboards, strategic HTML reports, company pages, landing pages, and high-craft redesigns.

The goal is to prevent vague "make it premium" execution. Pick a visual archetype, turn it into a concrete design contract, then build and verify against that contract.

## Required Output Before Coding

Before implementation, define a compact design contract:

```text
Design Contract
- Archetype:
- Reference basis: user-selected reference / agent-selected reference / no-reference experiment
- Reference source or archetype: MotionSites prompt, Godly site, Variant/Impeccable example, Apple cinematic, etc.
- Why this archetype fits:
- Why the obvious alternatives are weaker:
- Hero asset path: image_gen / owned image / owned video / Seedance-confirmed video / MotionSites direct reuse / code-native scene
- Hero composition: subject, text-safe area, nav position, CTA placement, next-section hint
- Display headline rhythm: exact words, manual line breaks, punctuation policy
- Media grammar: image/video crop, lighting, material, density, negative prompts
- Typography rhythm:
- Layout rhythm:
- Motion grammar:
- Interaction inventory:
- DOM/SVG/canvas vs raster boundary:
- Top failure risks:
- Browser verification targets:
```

Keep it short enough to be useful. Do not turn it into a long essay.

## Archetype Catalog

### 1. Apple Cinematic Product

Best for: product pages, company homepages, brand relaunches, premium announcements, pages where one product/object/service should feel desirable.

Visual thesis: large cinematic imagery carries emotion; UI chrome stays quiet and precise.

Hero:
- Generated or owned image/video is mandatory unless the product itself is visible in live UI.
- Use broad negative space, restrained nav, one tight headline, one short support line, 1-2 CTAs.
- Product/object/scene should be integrated into the whole first viewport, not trapped in a right card.

Media grammar:
- clean lighting, material realism, controlled reflections, soft depth
- neutral black/white/graphite fields with one accent
- no text inside the image

Motion grammar:
- slow reveal, parallax, object scale, masked transitions, sticky section changes
- no noisy floating particles as the main effect

Avoid when: dense data, many actors, operational dashboards, or content that needs comparison more than desire.

### 2. MotionSites Liquid Video

Best for: startup landing pages, app launches, wellness/consumer experiences, pages where ambient motion is the first impression.

Visual thesis: a looping video or animated background creates atmosphere; liquid glass UI floats above it.

Hero:
- Use full-screen video or a strong poster frame.
- Preserve video aspect ratio, crop, loop rhythm, overlay strength, and text-safe area.
- If reusing a MotionSites prompt, match first, then adapt.

Media grammar:
- motion has a subject, not just abstract wallpaper
- glass panels are thin and functional
- text overlays remain real HTML

Motion grammar:
- background loop, glass hover, subtle nav/menu transitions
- avoid excessive blur that washes out readability

Avoid when: the user needs a durable page but the only asset is a fragile remote video URL and no fallback/localization plan exists.

### 3. Godly Editorial Interactive

Best for: public research pages, editorial websites, founder essays, high-end knowledge pages, portfolio-like showcases.

Visual thesis: typography, spatial rhythm, custom section mechanics, and scroll interaction create a real-site feeling.

Hero:
- Can be image-led, type-led, or code-native, but must have a distinctive spatial system.
- Use reference decomposition: geometry, image role, typography, materials, motion, hover states, responsive behavior.

Media grammar:
- generated art should inherit the reference's crop, density, subject treatment, and material language
- never copy proprietary assets, logos, or original copy

Motion grammar:
- scroll reveals, pinned transitions, masks, section-to-section continuity
- each motion must clarify hierarchy or story

Avoid when: the user needs quick internal utility or a plain report.

### 4. Premium Research Dashboard

Best for: public-facing strategic dashboards, market maps, company comparisons, industry reports, investor-style visual reports.

Visual thesis: the page feels like a designed decision surface, not a deck of chart cards.

Hero:
- Presentation/research pages still need a strong first viewport: generated topic metaphor, spatial data scene, or designed command surface.
- The first screen should communicate one thesis and one route into the data.
- Keep strategic paragraphs below the fold.

Media grammar:
- use generated imagery for atmosphere or metaphor only
- charts, matrices, filters, tables, maps, timelines, and labels stay DOM/SVG/canvas

Motion grammar:
- filter transitions, chart reveal, relationship highlighting, sticky summary, section pinning
- no decorative metric cards that do not change or interact

Avoid when: it is a repeated-use internal ops dashboard; then use command-surface density rather than cinematic Hero.

### 5. Data Story Map

Best for: podcast/transcript visualization, long research notes, industry learning maps, internal knowledge pages that still need polish.

Visual thesis: information architecture comes first, then selected visual moments make the knowledge memorable.

Hero:
- Use image_gen for an immersive topic metaphor unless explicitly skipped.
- Treat the first viewport as a learning entry, not a table of contents.

Body rhythm:
- searchable index, glossary, comparison matrix, SVG loops/networks/pyramids, tabs, filters, quote strips
- avoid equal-card monotony

Illustration grammar:
- Xiaohei 1.0 for logic/process/methodology anchors
- Xiaohei 2.0 for user situations, project stories, product evolution, and long-scroll stories
- Xiaohei never replaces data objects or the main premium Hero

Avoid when: the user only needs a dense operational tool.

### 6. Luxury Minimal Report

Best for: board memos, strategic briefs, market-entry pages, executive one-pagers, premium PDF-like HTML pages.

Visual thesis: restraint, contrast, rhythm, and one high-quality visual asset create authority.

Hero:
- One visual subject, one thesis, minimal metadata, strong margin logic.
- Use image_gen or owned asset for the first impression.

Body rhythm:
- fewer sections, stronger spacing, sharp typography, controlled tables and pull quotes
- small number of high-value diagrams instead of many cards

Motion grammar:
- subtle reveals, anchored nav, smooth section transitions
- motion must never feel like a SaaS demo template

Avoid when: product interaction or playful consumer energy is needed.

## Matching Rules

Choose 1 primary archetype and optionally 1 secondary influence.

Recommend the archetype silently for routine tasks. Ask the user only when:
- they explicitly want to choose references
- there are two materially different directions with different tradeoffs
- the page is public-facing and brand risk is high

For normal execution, do not stop after naming the archetype. The contract must affect actual implementation choices.

## Reference Accountability

If the user has been discussing premium references, do not skip reference selection silently.

Before coding, choose one:

- `user-selected reference`: the user picked a MotionSites prompt, Godly page, Variant entry, Impeccable example, or original site URL
- `agent-selected reference`: the agent names a concrete reference direction before implementation
- `no-reference experiment`: the agent proceeds without a real reference and says so plainly

If the page ends up looking like the agent's usual mold, the first correction is to revisit this field and choose a stronger reference basis.

## Hero Asset Gate

For public/presentation pages, the Hero asset path must be real:

- `image_gen`: default for static Hero background plates, product renders, topic metaphors, and editorial scenes
- owned image/video: use when provided or clearly available
- Seedance-confirmed video: only after explicit cost confirmation
- MotionSites direct reuse: only when the user provides the official copied prompt or accepts the remote demo asset for an experiment
- code-native scene: only when the subject is better as interactive/canvas/WebGL than as a bitmap

Reject these as primary Hero assets:

- dark grid + dots
- generic glow/gradient
- huge typography alone
- right-side image card
- screenshot collage
- SVG illustration by default

## Reference Decomposition Protocol

When using Godly, MotionSites, Variant, Impeccable, or any premium reference, decompose before coding:

1. First viewport geometry
2. Main visual asset and crop
3. Typography scale and line rhythm
4. Background/material layers
5. Color roles and accent budget
6. Container geometry and radius logic
7. Motion source and timing
8. Hover/focus/active states
9. Responsive reflow
10. What must be rebuilt as DOM/SVG/canvas vs what can remain raster

Do not summarize references as "clean", "high-end", or "Apple-like". Convert them into implementation constraints.

## Quality Gate

Before delivery, score the page quickly:

- Hero immersion: 1-5
- Visual subject strength: 1-5
- Display headline rhythm: 1-5
- Text density discipline: 1-5
- Reference/archetype fidelity: 1-5
- DOM/SVG/canvas reconstruction: 1-5
- Motion/interactivity usefulness: 1-5
- Mobile first viewport: 1-5

If any public-facing Hero scores below 4, fix the Hero before polishing lower sections.

Automatic failures:

- the first viewport can be described as a PPT cover
- no concrete reference was selected even though the user asked for reference-led premium work
- Hero has no real asset or code-native subject
- display headline wraps like an accidental sentence instead of designed typography
- primary copy area is a dense paragraph
- important UI/text/chart content is baked into images
- mobile first viewport shows only nav/table of contents/oversized text
- no meaningful hover, tab, filter, scroll, or reveal interaction on a page meant to feel premium
