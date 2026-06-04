---
name: premium-web-workflow
description: Default global workflow for making beautiful webpages, static HTML reports, and visual dashboards. MUST use whenever the user says 做网页, 设计网页, 做官网, 公司官网, landing page, 落地页, 产品页, 首页, 页面设计, 网页改版, 静态HTML, 静态报告, 单文件HTML, 单文件报告, 战略看板, 可视化网页, 可视化报告, 可视化看板, 数据看板, 可视化大屏, 行业地图, 行业可视化, dashboard, data visualization, 网页太丑, 不像官网, 像PPT, 加动效, 加交互, 高级感, 苹果风, Awwwards, or asks to design/build/redesign/polish/critique/animate any website, visual report, visual dashboard, or visual frontend page. Enforces a hero-first high-craft workflow for public/polished pages, strong dashboard composition for internal tools, generated or owned visual assets when needed, reusable premium references, faithful implementation, optional generated video assets, GSAP motion, then browser verification. Build Web Apps/frontend-app-builder may be used for implementation, but must not replace this design workflow. Avoid static PPT-like pages.
---

# Premium Web Workflow V2

This is the user's default webpage, visual-report, and visual-dashboard workflow. If the user casually says "做网页", "设计一个官网", "做个 landing page", "做一个可视化看板", "做数据看板", "做行业地图", "做一个静态 HTML 报告", "做一个单文件战略看板", "这个页面太像 PPT", or anything similar, use this skill automatically. The user should not need to remember or type the skill name.

The purpose is to stop generic AI webpages. For visually important web work, do not jump straight from content to static HTML. Create a strong visual target first, implement against that target, add motion, and verify the result.

## Operating Principle

Treat webpage work as a design-production pipeline, not a text-to-HTML task:

```
brief / content
  -> Web Design Vault Lite archetype + design contract
  -> Hero-first immersion plan
  -> bespoke hero visual asset or motion scene
  -> section-level visual references
  -> faithful implementation
  -> GSAP motion layer
  -> browser verification
  -> polish loop if the page still feels generic
```

Be proactive. If the user asks for a webpage and does not specify a stack, use the existing project stack when there is one. If there is no project, create the lightest reasonable web app or static HTML that supports the intended interaction and motion.

## Build Web Apps Bridge

The official `frontend-app-builder` / Build Web Apps skill can be useful for implementation, dependency setup, static HTML delivery, and browser verification. It is not a substitute for this skill.

If the task is a polished webpage, visual report, strategic dashboard, industry map, public-facing static HTML page, or anything the user expects to look premium:

1. Use `premium-web-workflow` as the design and quality workflow first.
2. Use `frontend-app-builder` only as the implementation/build tool after the visual direction is clear.
3. Do not announce "I will make a static HTML report" as the primary plan if the user asked for a visual webpage or dashboard.
4. Do not default to "single HTML + embedded CSS" unless the user asked for that delivery format or the project context requires it.
5. Even for single-file HTML delivery, keep Hero-first, real visual assets, DOM/SVG/canvas charts, interaction states, and browser screenshots.

If another skill triggers first, explicitly bridge back:

```text
I will use frontend-app-builder for implementation, but premium-web-workflow governs the design: Hero-first, visual reference/deep reference, real DOM/SVG/canvas, motion, and browser verification.
```

## Personal Taste Overlay

If the `zhangliang-web-taste` skill is available, use it together with this workflow for the user's webpage design, redesign, critique, and review tasks. It captures the user's specific anti-PPT taste, Hero expectations, image-asset boundary, and review criteria.

## Web Design Vault Lite Gate

For polished webpages, public-facing visual reports, public/presentation dashboards, company pages, landing pages, strategic HTML reports, and redesigns, read `references/web-design-vault-lite.md` before implementation.

Do not treat "high-end", "Apple-like", "Awwwards", "Godly", or "MotionSites-style" as sufficient design direction. Convert the brief into a compact design contract first.

Choose one primary archetype:

- `Apple Cinematic Product`
- `MotionSites Liquid Video`
- `Godly Editorial Interactive`
- `Premium Research Dashboard`
- `Data Story Map`
- `Luxury Minimal Report`

Optionally add one secondary influence when useful. Then define:

- why this archetype fits the user's page
- Hero asset path: `image_gen`, owned image/video, Seedance-confirmed video, MotionSites direct reuse, or code-native scene
- Hero composition: subject, text-safe area, nav, CTA, and next-section hint
- media grammar: crop, lighting, density, materials, and negative prompts
- typography/layout/motion rhythm
- interaction inventory
- DOM/SVG/canvas vs raster boundary
- top failure risks and browser verification targets

For routine tasks, this contract can be short and internal. For ambiguous or high-risk public pages, show the user the contract briefly before coding. If the user provides a premium reference, follow the Reference Decomposition Protocol in `web-design-vault-lite.md` before implementing.

Hard rule: if the page is public-facing or presentation-oriented, do not proceed with a text-only or SVG-only Hero unless the design contract explicitly justifies a code-native scene and the first viewport has a real visual subject.

### Reference Accountability Gate

For high-stakes or public-facing webpages, do not silently "just start" from the agent's own default taste. Before coding, make the reference basis explicit.

Use one of these paths:

- **User-selected reference**: ask the user to choose from MotionSites, Godly, Variant, Impeccable, or a provided URL when the user has previously expressed that they want reference-led work and the task is not urgent.
- **Agent-selected reference**: if the user says to proceed, state the selected reference category or specific source before implementation, such as `MotionSites liquid video`, `Godly editorial interactive`, `Apple cinematic product`, or a named inspected site.
- **No-reference experiment**: only use this when speed matters or the user asks for an experiment. State that it is not reference-led, so the result may inherit the agent's own default composition patterns.

If no concrete reference was selected or inspected, do not later imply that the page followed Godly, MotionSites, Variant, or any other real-site reference. Be honest: "this is an original pass using the archetype, not a reference replication."

If the user complains that pages look like the same template, first audit whether a real reference was selected. The fix is usually to choose a specific reference and rebuild the composition, not to add more polish to the same left-copy/right-visual pattern.

## Hero-First Immersion Gate

For any public-facing website, company page, landing page, product page, homepage, industry overview, or polished visual report, treat the first viewport as a separate deliverable. Do not start implementation by laying out all text sections and then adding a decorative image later.

Before coding the page, define the Hero's visual strategy and choose at least one primary visual asset path:

- generated Hero image: cinematic background plate, product/robot/object render, editorial scene, spatial metaphor, texture, or environment; default to Codex's built-in `image_gen` / GPT Image path when available
- owned video: localized MotionSites video, product footage, generated Seedance loop, or other durable background video
- code-native scene: canvas/WebGL/GSAP composition only when the subject is better as an interactive or animated system
- real provided asset: product photo, customer scene, brand image, or source material supplied by the user

If no strong asset exists and the page is meant to look premium, generate a bespoke Hero reference/asset before implementing the Hero. A title, subtitle, two CTAs, and a card grid is not enough.

Default Hero asset rule: do not use an SVG illustration as the primary Hero visual. Prefer a GPT Image / `image_gen` bitmap Hero asset. SVG is appropriate for icons, connector lines, diagrams, charts, labels, timelines, and interactive data structures, but it should not be used as a cheap substitute for a premium Hero background plate or visual subject.

The Hero must have:

- one clear visual subject or immersive spatial atmosphere
- a real generated, owned, or code-native primary visual asset; a dark grid, particle dots, glow, or huge typography alone does not satisfy the Hero asset requirement
- real HTML headline, copy, nav, CTA, and key labels layered into the scene
- composition that feels like a website first viewport, not a report cover or slide
- readable first-screen information density: one headline idea, one short supporting idea, and at most 2-3 key chips/CTAs before the fold
- desktop and mobile first-viewport verification
- a hint of the next section when appropriate

Exceptions: skip the Hero-first visual asset only when the user explicitly asks for an internal dashboard, wireframe, pure documentation page, small code fix, accessibility-only fix, or very fast prototype. Even then, avoid PPT-like title blocks when possible.

### Hero Readability And Asset Gate

Do not confuse "Hero-first" with "make the headline enormous."

Before accepting a Hero, check:

- The main headline fits in the first viewport without chaotic wrapping, clipping, or dominating every other element.
- The left or primary copy area is not a dense paragraph block. If the strategic conclusion is long, compress it to one short sentence and move the details below the fold.
- The first viewport has a real subject: generated image, owned image/video, product/scene render, spatial illustration, 3D/canvas object, or a strongly designed data object.
- The primary Hero visual is not a hand-written SVG illustration unless the user explicitly requests an SVG-native art direction. For normal premium webpages, generate a bitmap Hero asset with `image_gen`.
- Decorative grids, floating dots, radial glows, generic dashboards, and oversized typography are support layers only. They do not count as the primary visual subject.
- If no asset exists for a public/presentation page, generate or source one before implementation. If image generation is unavailable, state that limitation and choose the next-best owned/code-native visual plan; do not silently ship a text-only Hero.
- The Hero should be scannable in 3 seconds. Treat anything that requires reading a multi-line paragraph in the first viewport as a body section, not Hero content.

### Display Headline Typesetting Gate

For Chinese Hero headlines and final CTA headlines, do not rely on browser auto-wrapping. Treat display text as designed typography.

Before accepting a Hero or closing CTA:

- Rewrite long sentences into short display phrases before tuning CSS.
- Prefer balanced manual line breaks, such as `先定风格 / 再写网页` or `把审美 / 写进流程`.
- Avoid punctuation in display-scale H1 text unless the specific reference uses it successfully.
- Avoid Chinese comma/full stop dangling at line ends or creating accidental three-line fragments.
- Keep the explanation in the subhead or body section, not inside the display headline.
- Screenshot-check desktop and mobile. If the H1 or CTA heading feels awkward, rewrite the copy first and only then adjust type size or width.
- Apply this to all major section titles, not only the first viewport, when the page is meant to look premium.

## Visual Dashboard / Static Report Mode

Use this mode when the user asks for a 可视化网页, 静态 HTML 报告, 单文件报告, 战略看板, 可视化看板, 数据看板, 可视化大屏, 行业地图, 行业可视化, 报告可视化, dashboard, or data visualization page.

First classify the output:

- **Public / presentation dashboard**: industry map, company comparison, investor/research visual report, public-facing data story, or page meant to feel like a website. Use Hero-first immersion. The first viewport should have a strong visual subject, narrative title, and one clear entry path into the data.
- **Internal / operational dashboard**: repeated-use monitoring, CRM/ops/product metrics, admin workflow, or dense decision tool. Do not force a cinematic Hero. Instead, make the first viewport a premium command surface with strong information hierarchy, filters, KPI summary, and real interactive controls.
- **Static HTML report**: a delivery format, not a design style. It may be a single file, but it still needs designed first viewport, visual hierarchy, real charts/diagrams, interaction where useful, and browser verification.

For both types:

- charts, filters, tabs, legends, tables, timelines, maps, and cards must be real DOM/SVG/canvas, not screenshot images
- use generated images only for non-textual atmosphere, section art, product/industry metaphor, or background plates
- include hover/focus/active states for controls
- verify desktop and mobile or define an intentional wide-screen-only layout for true data walls
- avoid PPT-like cover sections followed by static cards
- avoid "giant text wall Hero" patterns where the first screen is mostly oversized type and dense paragraphs without a generated/owned visual subject

## MotionSites Two-Layer Layer

When the visual direction is weak, the user asks for a cooler Hero, or the page still feels like PPT, use MotionSites in two layers: direct reuse first when possible, reference mode second when no suitable reusable prompt is selected.

- Read `references/motionsites-protocol.md` when MotionSites is mentioned or when a premium landing page needs stronger design mechanics.
- **Direct Reuse Mode**: if the user wants to use MotionSites directly, open or point them to `https://motionsites.ai/` so they can choose a design and paste the copied prompt. Then implement that prompt as the primary spec with minimal creative drift.
- **Reference Mode**: if the user does not select a MotionSites prompt, use MotionSites only as a high-level pattern source: composition, motion, image role, section rhythm, and implementation mechanics.
- Use MotionSites prompts only when they are visible through the official site `Copy` button or explicitly provided by the user. Do not use DMCA-disabled repositories, mirrors, or paid-only prompt content that the user has not provided.
- For direct reuse, preserve the original design mechanics first; only after the page is running and screenshot-verified should you replace brand, copy, colors, assets, or section content.
- For production use, localize critical remote assets such as video, images, model files, and fonts when allowed; add fallback poster/CSS backgrounds so the page does not black-screen if an external URL fails.
- If a MotionSites page has the right visual effect but the wrong demo video content, keep the page mechanics and replace only the video asset. Preserve the original video's aspect ratio, crop, duration, loop behavior, animation rhythm, overlay treatment, and text-safe areas.

## Godly Deep Reference Layer

Use Godly when the task needs real-world premium website references rather than a directly copied prompt.

- Read `references/godly-deep-reference.md` when the user mentions `godly.website`, asks to use a real website reference, wants to replicate a specific effect from a beautiful site, or says the page should look like a top-tier real website.
- Godly is a curated inspiration source, not an open-source template library. Use it to find and inspect references, then extract design mechanics.
- For a 80-90% effect match, do not summarize the reference as "clean", "premium", or "animated." Produce a detailed replication brief that covers layout geometry, visual assets, typography, color/materials, motion, interaction states, responsive behavior, and implementation choices.
- If the user provides a specific Godly entry or original site URL, inspect that exact page in browser. Capture or observe desktop and mobile first viewports, important scroll states, hover states, and motion if possible.
- Do not copy proprietary assets, logos, text, videos, or full page structure as-is. Rebuild the mechanics for the user's content and brand.
- Use Godly after MotionSites Direct Reuse if no copied prompt exists, or before custom image generation when the visual direction needs real-site calibration.

## Optional Video Asset Provider

If the `seedance-video-asset` skill is available, use it when the webpage needs a custom generated video asset, especially for a premium Hero background or when replacing a MotionSites demo video with the user's own product/scene animation.

Seedance is optional and paid. Never call it silently.

- Use ChatGPT/image generation for static bitmap assets.
- Use Seedance only when motion is materially better than a still image.
- Before calling Seedance, state the intended model, resolution, duration, ratio, and a rough cost estimate, then ask for explicit confirmation.
- Never place API keys in the skill, project repository, GitHub repo, README, or committed code. Read `ARK_API_KEY` only from the local environment, ignored `.env`, or a private backend/proxy.
- For background Hero loops, default to 720p, 4-6 seconds, `generate_audio=false`, and localize the result into the project assets.
- Download generated videos promptly because API result URLs are temporary. Use local video paths in production or durable local pages.

## Default Image Generation Provider

For bitmap image assets, default to Codex's built-in `image_gen` tool, treated as the GPT Image generation path.

Use this default for:

- Hero background plates
- product/robot/object renders
- editorial scenes
- visual metaphors
- section illustrations
- textures, poster frames, and static fallback images
- Xiaohei-style generated raster illustrations when that skill calls for image generation

Do not route image generation to Seedance, Midjourney, Stable Diffusion, external APIs, or prompt-only advice unless the user explicitly asks for a different provider.

If `image_gen` is unavailable in the current Codex environment:

1. State the limitation clearly.
2. Continue with a precise asset brief/prompt and a code-native placeholder only if the user accepts that compromise.
3. Do not silently replace a required Hero image with a dark grid, particles, gradients, or oversized typography.

Seedance is only the optional video asset path, not the default image generation path.

For Hero images specifically, `image_gen` is the default provider. Do not hand-roll SVG Hero art by default. Use SVG in the Hero only for real vector UI/data layers on top of or around the bitmap/video/canvas subject.

## Editorial Illustration Mode

If `ian-xiaohei-illustrations` or `ian-xiaohei-scenes` is available, use them as optional body-section illustration providers for Chinese longform, knowledge, report, podcast, methodology, project-story, and industry-explainer webpages.

Use Ian Xiaohei 1.0 `ian-xiaohei-illustrations` for:

- a middle-section visual break in a dense knowledge page
- one abstract claim, workflow, contrast, state, or metaphor that needs a memorable explanation
- Chinese article-style inline illustrations that keep the page from becoming a PPT/report stack
- small editorial moments after the Hero, between diagrams, or near quotes/explainers
- pure hand-drawn logic/process/methodology explanation

Use Ian Xiaohei 2.0 `ian-xiaohei-scenes` for:

- user situations, work pressure, AI-era anxiety, creator/product/team pain points
- project retrospectives, personal experience, product evolution, growth path, or content asset stories
- real-object small scenes where Xiaohei physically interacts with objects
- long-scroll story images when the user asks for 彩蛋模式, 长卷故事图, 超横版, 个人经历, 项目复盘, 产品演化, or 成长路径

Do not use it for:

- the main premium Hero of a public website
- commercial brand KV, product hero, Apple/Awwwards-style first viewport, or cinematic background
- charts, tables, maps, KPI panels, filters, tabs, buttons, legends, timelines, or interactive diagrams
- replacing DOM/SVG/canvas data objects with illustration images

Workflow:

1. First design the Hero using Hero-first rules.
2. After the knowledge architecture is clear, identify 1-5 "cognitive anchors" that deserve editorial illustration.
3. Route logic/process/methodology anchors through `ian-xiaohei-illustrations` as separate 16:9 illustrations.
4. Route situation/story/product-evolution anchors through `ian-xiaohei-scenes`; use standard 16:9 scenes by default and long-scroll mode only when the content is a project/person/product story.
5. Place the generated images as body illustrations with real DOM captions/explanations nearby.
6. Keep attribution clear if redistributing the skill package: Ian Xiaohei is a third-party visual language by Ian / helloianneo.

Rule of thumb: Xiaohei 1.0 explains structure; Xiaohei 2.0 makes situations and stories felt. Neither should carry the website's premium first impression.

### Xiaohei Handoff Rules

When the user asks another thread to use Xiaohei illustrations, the agent may not instantly recognize the skill if that thread started before the skill was installed. In that case, do not fake the style with generic image generation.

Use this exact recovery order:

1. Check whether `ian-xiaohei-illustrations` or `ian-xiaohei-scenes` appears in the available skill list.
2. If it appears, read and follow its `SKILL.md`.
3. If it does not appear but this package is installed locally, read:
   `/Users/kukuazhang/.codex/skills/ian-xiaohei-illustrations/SKILL.md`
   or `/Users/kukuazhang/.codex/skills/ian-xiaohei-scenes/SKILL.md`
4. If the local file is missing, ask the user to restart Codex or install the latest `premium-web-workflow-skills` package. Do not continue generating "Xiaohei-style" images from memory.

Before generating images, output a short shot list:

- which body section each illustration belongs to
- the one claim/process/metaphor it explains
- what Xiaohei is doing
- which labels are allowed, if any

For webpages, prefer no readable text inside the image unless the skill explicitly calls for short handwritten Chinese labels. If labels are needed, keep them very short and keep the real explanation as DOM text beside the image.

If the first generated image contains English text, a big title, PPT layout, too many labels, object clutter, copied master composition, or Xiaohei is only decorative, regenerate using the QA checklist from the selected Xiaohei skill instead of settling for the wrong asset.

## Default Workflow

Use this order for new website or landing-page work:

0. **Web Design Vault Lite Contract**
   - Read `references/web-design-vault-lite.md`.
   - Choose one primary archetype and optionally one secondary influence.
   - Define the Hero asset path, media grammar, layout rhythm, motion grammar, interaction inventory, and DOM/SVG/canvas vs raster boundary.
   - If using Godly, MotionSites, Variant, Impeccable, or another premium reference, decompose the reference before coding.
   - Keep the contract short, but let it constrain the implementation.

1. **Hero-First Immersion Plan**
   - Define what the first viewport should make the user feel and understand within 3 seconds.
   - Choose the Hero type: full-bleed visual scene, video background, spatial product/object stage, animated canvas/WebGL/SVG scene, editorial image-led Hero, or MotionSites direct reuse.
   - If no usable Hero asset exists, generate or source one before building the page.
   - If the page is a research/industry/company overview, turn the topic into a visual metaphor or concrete subject. Do not default to a plain report title.

2. **Reusable Design Selection**
   - If the user asks for MotionSites/direct reuse, or the project needs a premium Hero and no visual direction exists, first help the user select a reusable design.
   - Preferred path: open or provide `https://motionsites.ai/`, let the user choose a design, and ask them to paste the official `Copy` prompt.
   - If the user already pasted a complete prompt, do not ask them to reselect. Treat that prompt as the design spec.
   - If the user cannot find a suitable design, switch to Reference Pattern Selection.

3. **Reference Pattern Selection**
   - If no reusable prompt is selected, choose 1-3 reference patterns from high-end design references, MotionSites-style patterns, or the user's provided references.
   - When using Godly or another real-site reference, follow `references/godly-deep-reference.md` and produce a detailed replication brief before coding.
   - Summarize the chosen pattern in implementation terms: layout, image role, type scale, motion, interaction, and responsive behavior.
   - Do not copy prompt text verbatim into the final page brief. Distill and adapt it.

4. **Video Asset Decision**
   - Decide whether the Hero or a key section needs a real video asset.
   - If a MotionSites demo video already gives the right composition and motion but the subject is wrong, use it as a motion/size reference and generate or source a replacement asset.
   - If a still image is enough, do not use paid video generation.
   - If Seedance is needed, route through `seedance-video-asset` and stop for cost confirmation before the paid call.

5. **Visual Direction**
   - Use `imagegen-frontend-web` first.
   - For actual bitmap generation, use Codex built-in `image_gen` / GPT Image when available.
   - Generate the Hero reference/asset first unless Direct Reuse Mode already provides a strong Hero.
   - Generate one separate horizontal reference image per section.
   - Default to 6 sections for a landing page and 8 sections for a full website template unless the user gives a count.
   - Do not compress the whole page into one tall mockup.
   - The output should establish the aesthetic before code begins: hero composition, imagery, typography, palette, spacing, and section rhythm.
   - In Direct Reuse Mode, skip new generated reference images unless the copied prompt lacks a key visual asset or the user asks for adaptation. The copied prompt itself is the reference.

6. **Image-to-Code Implementation**
   - Use `image-to-code` after the reference images exist.
   - Recreate layout, hierarchy, typography, palette, spacing, imagery, and material qualities as faithfully as possible.
   - Avoid drifting into generic card grids, centered dark heroes, purple gradients, oversized pills, or PPT-like content blocks.
   - If the implementation cannot match a reference due to missing assets or library limits, state the gap and choose the closest practical implementation.
   - **Hard rule: do not ship a screenshot collage.** The generated reference images are design input, not final page content. Do not place full reference images into the page as the main section UI.
   - Digest each reference image into real frontend: headings become real text, buttons become real buttons/links, cards become HTML/CSS components, charts/timelines become structured DOM/SVG/canvas, navigation becomes clickable UI, and repeated blocks become data-driven components.
   - Use `<img>` freely for genuine visual assets: hero art, editorial illustration, product/robot renders, photography, textures, background plates, atmospheric scenes, and small decorative moments. Never use an `<img>` as a substitute for an entire UI section full of important text, buttons, diagrams, or cards.

## Image Asset Boundary

This workflow is not "no images." It is "no screenshot collage."

Use generated bitmap images when they improve what DOM/SVG/CSS cannot do well:

- **Hero visual assets**: premium atmosphere, product/robot render, visual metaphor, cinematic background, editorial cover image.
- **Section art**: non-textual illustrations, scene-setting images, material textures, environment renders, product closeups.
- **Detail moments**: small image islands inside cards or panels when the content is visual rather than textual.
- **Static visual metaphor**: when the image conveys mood or subject matter, while the actual explanation remains in DOM/SVG nearby.

Keep critical interface and learning content as real frontend:

- Page title, body copy, quotes, CTAs, nav, buttons, tabs, filters, cards, tables, charts, legends, timelines, labels, and business logic should stay as selectable/searchable DOM/SVG/canvas.
- If an image contains readable UI text, buttons, chart labels, or important claims, extract those into real elements or regenerate the image without that text.
- For a hero section, a generated image may be the main visual, but headline, supporting copy, CTA, and any key diagram labels should remain real HTML unless the user explicitly asks for a poster-like bitmap.
- Do not default to placing a hero image in a right-side card beside text. For premium hero sections, first consider making the image a full-bleed canvas, background plate, immersive scene, or spatial layer that the real HTML text sits on or within. A boxed image next to text is allowed only when it is clearly the strongest composition.

### Practical Reference-Image Reconstruction Method

When a section reference image exists, rebuild it by decomposition. Do not guess the whole page in one pass.

1. **Create a layer inventory**
   - Identify every visible layer: background, texture, hero/media asset, headings, body text, buttons, cards, pills, icons, lines, charts, tables, timelines, controls, annotations, and decorative effects.
   - For each layer, decide its implementation type:
     - `HTML text`: headings, body copy, labels, metrics, captions.
     - `HTML/CSS component`: buttons, cards, tabs, pills, nav, filters, accordions, toolbars.
     - `SVG`: icons, arrows, connector lines, simple charts, timelines, network diagrams, annotated maps.
     - `Canvas/WebGL`: dense particle fields, complex animated backgrounds, highly dynamic diagrams.
     - `Raster image`: photos, generated illustrations, hero art, product/robot renders, textures, atmospheric scenes, non-textual background art.

2. **Extract structure before styling**
   - Rebuild the section skeleton first: layout grid, major zones, alignment, aspect ratios, and spacing.
   - Use the reference image dimensions to infer relative positions. Prefer percentages, CSS grid, aspect-ratio, and container-relative sizing over fixed screenshot dimensions.
   - Keep text and controls independent from background imagery.

3. **Extract copy and controls**
   - Transcribe readable text from the reference image into real DOM.
   - If text is too small or ambiguous, generate or request a closer detail image for that area instead of baking the text into an image.
   - Convert visible CTAs, chips, tabs, menu items, and legend items into actual interactive elements with hover/focus states.

4. **Rebuild diagrams and data visuals**
   - For simple timelines, maps, grids, funnels, matrices, and flow diagrams, use SVG or structured HTML/CSS.
   - For tables, use real table/grid markup so rows, columns, and cells can adapt responsively.
   - For charts, use SVG when static and lightweight; use canvas only when there are many marks or animation requires it.
   - If a chart is too complex to rebuild perfectly, recreate the visible visual logic: axes/labels/legend/marks/relationships must be real elements, while only non-essential texture or illustration may remain raster.

5. **Generate supporting assets where needed**
   - If the reference contains a robot, product render, abstract terrain, glass object, editorial photo, or texture that is not a UI control, generate that as a separate clean asset.
   - Do not generate one giant asset containing the whole section UI.
   - Place generated assets behind or beside real DOM layers.

6. **Match visually, then make it web-native**
   - Tune typography, color, spacing, radius, shadow, opacity, and blur until the screenshot resembles the reference.
   - Then add web-native behavior: hover states, sticky/scroll behavior, responsive rearrangement, real navigation, and reduced-motion fallbacks.

7. **Screenshot compare**
   - Take a browser screenshot of the implemented section.
   - Compare against the reference image for composition, text scale, spacing, contrast, and component fidelity.
   - If the implementation only looks similar because it uses a full-section `<img>`, it fails.

7. **Motion Layer**
   - Use GSAP skills when animation, scroll narrative, parallax, reveal effects, pinned sections, text motion, SVG motion, or polished micro-interactions are needed.
   - Prefer:
     - `gsap-timeline` for choreographed sequences.
     - `gsap-scrolltrigger` for scroll-driven animation, pinning, scrub, and parallax.
     - `gsap-react` for React or Next.js projects.
     - `gsap-performance` before completion to avoid jank.
   - Animate transform and opacity first. Avoid animating layout properties like width, height, top, left, margin, and padding unless there is a strong reason.
   - Motion should make the page feel alive without turning it into a demo reel. Use it to guide attention, create continuity, and support the story.

8. **Browser Verification**
   - Run the site locally when needed.
   - Open it in a browser and check desktop and mobile viewports.
   - Verify the page is not blank, the hero is visible, text does not overlap, animations run smoothly, and the result resembles the reference images.
   - On mobile, do not accept "it stacks" as sufficient. The first viewport must still show the brand/product/topic signal and the hero, not only a tall menu or table of contents.
   - For canvas, WebGL, video, or GSAP-heavy pages, visually inspect screenshots and confirm the primary scene is actually rendering.
   - Score the page with the Quality Gate in `references/web-design-vault-lite.md`. If the public Hero scores below 4/5, fix the Hero before polishing body sections.

## Knowledge / Transcript Visualization Mode

When the source is a long transcript, report, research note, or industry analysis, do not start by making decorative section mockups. First distill the knowledge architecture, then design interactive explanatory objects.

Use this mode when the user wants to "learn everything", understand an industry, or preserve many details from source material:

1. Extract the main claims, terms, actors, business flows, timelines, tensions, and decision recipes from the source.
2. Design a premium Hero from the distilled topic before implementing the body. Use generated or owned visual assets for atmosphere, subject, or metaphor unless the user explicitly asks for a plain internal report.
3. Turn the knowledge structure into real UI objects: searchable index, chapter map, glossary, comparison matrix, SVG loops/networks/pyramids, tabs, filters, and drill-down panels.
4. Add editorial illustration only for selected cognitive anchors. If using Ian Xiaohei, keep each illustration to one claim/process/metaphor and do not let it replace interactive knowledge objects.
5. Use generated images only for non-textual support such as hero atmosphere, product/robot renders, textures, or editorial illustration. Do not put important claims, charts, tables, or quotes inside images.
6. Browser-verify both desktop and mobile. For mobile, check `scrollWidth <= clientWidth`, first-viewport hero visibility, and that dense SVG/diagram sections remain readable or intentionally scrollable inside their own container.

## Existing Website / Company Homepage

For an existing site, do not start with image generation unless a redesign is requested.

Use this order:

1. Inspect the current site or code.
2. Diagnose why it does or does not feel premium: visual hierarchy, typography, spacing, imagery, interaction, motion, brand consistency, and AI-slop patterns.
3. If redesigning, generate new section reference images with `imagegen-frontend-web`.
4. Implement with `image-to-code` or direct code edits, depending on whether a reference image exists.
5. Add GSAP motion only where it supports the page story and does not harm readability or performance.
6. Verify in browser.

## Existing Page Review Mode

Use this when the user asks to review, critique, audit, diagnose, assess, or improve an already-built webpage.

Review the page like a senior visual/frontend director, not like a generic checklist. Inspect the rendered page in a browser when possible, including desktop and mobile screenshots.

Output should be concrete and fix-oriented:

1. **Verdict**: one short sentence on whether the page feels like a real premium website, a useful internal tool, a PPT/report, or an unfinished prototype.
2. **Top issues**: prioritize 5-8 issues by impact. For each, state the symptom, why it weakens the page, and the specific fix.
3. **Hero diagnosis**: explicitly judge whether the first viewport has a strong visual signal, whether image/text are integrated or merely side-by-side, and whether it still looks like PPT.
4. **Image asset audit**: identify where generated images should be used, where images are wrongly replacing UI, and where DOM/SVG/canvas should be rebuilt.
5. **Interaction/motion audit**: note missing hover states, scroll narrative, GSAP opportunities, dead controls, or animations that feel decorative rather than purposeful.
6. **Responsive audit**: check mobile first viewport, text fit, horizontal overflow, and whether dense diagrams remain readable.
7. **Action plan**: give a short ordered patch plan the next agent can execute immediately.

Do not stop at taste adjectives. Translate every critique into an implementation instruction, such as "make the hero image a full-bleed background plate with real HTML title over it" or "replace this chart screenshot with SVG labels and DOM controls."

## Fast Mode

If the user clearly wants speed or a lightweight artifact, still preserve the workflow shape but compress it:

1. Generate 1-2 key visual references instead of every section.
2. Implement the page.
3. Add only the highest-leverage motion.
4. Verify the first viewport and one mobile viewport.

Do not use fast mode by default for company homepages, launch pages, premium marketing pages, or any request where the user complains about quality.

## Quality Bar

A delivered page should feel like a real website, not a slide deck. It needs:

- A strong first-viewport signal: meaningful hero image, visual system, motion scene, product/browser frame, or cinematic composition.
- A Hero that was intentionally designed before the body, not a title block with a late decorative asset.
- Clear typographic hierarchy and mature spacing.
- Real DOM content. Text, buttons, cards, charts, filters, tabs, timelines, and diagrams must be rebuilt as frontend elements rather than flattened into screenshots.
- A cohesive palette with restraint.
- Real interactive states: hover, focus, active, loading or transition states where relevant.
- Motion with purpose: reveal, guide attention, create spatial continuity, or support scroll storytelling.
- Responsive behavior that looks intentionally designed, not merely stacked.

## Anti-Patterns

Avoid:

- Building directly from text content into static HTML.
- Pasting generated reference images as whole-page or whole-section screenshots.
- Leaving image text/buttons/diagrams trapped inside an `<img>` when they should be searchable, selectable, interactive, responsive DOM.
- Single long beige/dark page filled with rounded cards.
- Overused left-text/right-image hero by default.
- Three-column equal feature card grids as the main design language.
- Purple-blue gradient AI aesthetic unless explicitly requested.
- Fake dashboards, fake metrics, and generic SaaS copy when the brand does not call for them.
- Cards inside cards inside cards.
- Animations that obscure readability, trigger layout shifts, or run continuously without value.

## Screenshot-Collage Failure Check

Before completion, inspect the implementation:

- If most sections are just `<img src="generated-section.png">`, the task is not complete.
- If visible buttons are inside images and cannot be clicked or focused, the task is not complete.
- If important chart labels, timelines, cards, or body copy cannot be selected/copied/search-indexed because they are baked into an image, the task is not complete.
- If mobile behavior is only image scaling instead of layout adaptation, the task is not complete.

Fix by rebuilding the visible design as real HTML/CSS/SVG/canvas/components. Keep only appropriate photographic, illustrative, texture, icon, or background assets as images.

## User Prompts That Should Trigger This

- "Make/design/build a website"
- "Create a landing page"
- "Design a company homepage"
- "Make this page prettier/high-end/Apple-like/Awwwards-like"
- "This webpage looks like PPT"
- "Add interaction/animation/motion"
- "Redesign this site"
- "Polish the frontend"
- "做网页"
- "设计网页"
- "做官网"
- "做公司官网"
- "做 landing page / 落地页"
- "这个网页太像 PPT"
- "这个页面不好看"
- "做得像苹果官网 / 高级一点 / Awwwards 一点"
- "加交互 / 加动画 / 加滚动动效 / 加视差"

## Recommended User-Facing Summary

When useful, briefly tell the user:

> 我会按我们的网页工作流走：先出分区视觉参考图，再按图实现，最后加 GSAP 动效并做浏览器检查。

Keep this summary short. The user wants the workflow to run by default, not to discuss the skill every time.
