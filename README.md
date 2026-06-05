# Premium Web Workflow Skills

Codex skills for building higher-craft webpages, static HTML visual reports, and visual dashboards instead of generic AI/PPT-like pages.

This package contains five skills:

- `premium-web-workflow`: the main workflow for website, landing page, homepage, Hero, redesign, animation, and visual frontend work.
- `zhangliang-web-taste`: a personal taste layer that catches common AI-webpage/dashboard failures such as PPT-like hero sections, boxed right-side images, screenshot-collage sections, weak motion, static chart screenshots, and generic card grids.
- `seedance-video-asset`: an optional video-asset workflow for generating custom Hero/background videos through Volcengine Seedance 2.0, with cost confirmation and secret-safety rules.
- `ian-xiaohei-illustrations`: a third-party Ian Xiaohei article-illustration skill, included with attribution, for hand-drawn Chinese explanatory illustrations inside longform/knowledge webpages.
- `ian-xiaohei-scenes`: a third-party Ian Xiaohei 2.0 scenes skill, included with attribution and example masters, for real-object article illustrations and long-scroll story images.

## What It Does

The workflow pushes Codex to:

1. Start from a Web Design Vault Lite contract instead of vague "make it premium" taste words.
2. Make the reference basis explicit: user-selected reference, agent-selected reference, or no-reference experiment.
3. When no reference is selected for an experiment, scout exactly 3 concrete Awwwards pages, choose 1 main reference, and record why.
4. Run Reference Forensics for concrete references: verify original-site access, capture screenshots, extract visual DNA, map mechanics to user content, and compare side-by-side.
5. Bind high-craft work to a specific site reference or explicitly mark it as a no-reference experiment.
6. Avoid reusing the same palette, Hero skeleton, content skeleton, motion method, and typography rhythm across consecutive experiments.
7. Treat the Hero/first viewport as a separate deliverable before writing the rest of the page.
8. Generate or source a strong Hero visual asset when no premium asset exists yet.
9. Design Chinese display headlines with short manual line breaks instead of accidental browser wrapping.
10. Run mechanical preflight checks for Hero, Chinese title line-height, CTA fit, nav pressure, section layout repetition, and real DOM/SVG/canvas boundaries.
11. Use MotionSites in two layers:
   - **Direct Reuse Mode**: choose a design on `https://motionsites.ai/`, paste the official `Copy` prompt, reproduce it first, then adapt.
   - **Reference Mode**: if no prompt is selected, borrow only design mechanics such as Hero composition, motion, image role, glass effects, and section rhythm.
12. Use Godly as a deep real-site reference source when no direct prompt exists, especially for Hero, motion, and premium site mechanics.
13. Translate reference motion into an explicit GSAP plan when needed: core tweens, timelines, ScrollTrigger pin/scrub, responsive matchMedia, and performance cleanup.
14. Keep important text, buttons, nav, tables, charts, and diagrams as real DOM/SVG/canvas instead of flattened screenshots.
15. Use Codex built-in `image_gen` / GPT Image as the default bitmap image generation path for Hero atmosphere, renders, textures, visual scenes, and static fallbacks; do not default to SVG Hero art.
16. Use Seedance 2.0 only when a page needs a custom video asset, such as replacing a MotionSites demo video with the user's actual product/scene motion.
17. Use Ian Xiaohei 1.0 illustrations for middle/body logic explanation, and Ian Xiaohei 2.0 scenes for real-object situation/story moments; neither is the main premium Hero system.
18. Add meaningful motion and browser-verify screenshots. During explicit self-evolution experiments, desktop screenshots are the primary gate; for production delivery, return to desktop/mobile verification.
19. Localize critical remote videos/images when a page will be kept or deployed, and add fallback visuals so a dead external URL does not break the Hero.
20. Treat Build Web Apps / `frontend-app-builder` as implementation support, not as a replacement for this visual workflow.
21. Reject giant-text/dense-paragraph Heroes that lack a real visual subject.

## Install

From the repository root:

```bash
bash install.sh
```

Manual install:

```bash
mkdir -p "$HOME/.codex/skills"
cp -R skills/premium-web-workflow "$HOME/.codex/skills/"
cp -R skills/zhangliang-web-taste "$HOME/.codex/skills/"
cp -R skills/seedance-video-asset "$HOME/.codex/skills/"
cp -R skills/ian-xiaohei-illustrations "$HOME/.codex/skills/"
cp -R skills/ian-xiaohei-scenes "$HOME/.codex/skills/"
```

Restart Codex or open a new thread after installing so the skills appear in the available skill list.

## Showcase Page

This repository includes a promotional showcase page built with the workflow itself:

```text
showcase/premium-web-workflow/index.html
```

It demonstrates the new Web Design Vault Lite contract, archetype selector, Hero asset gate, anti-PPT rules, and quality scoring gate.

## Self-Evolution Experiment V1

The first Awwwards-only self-evolution experiment lives here:

```text
experiments/self-evolution-v1/index.html
experiments/self-evolution-v1/evidence.md
```

It contains 3 desktop-first rounds:

- Skill intro page: Awwwards `AW Portfolio`, using a creative portfolio / work-gallery skeleton.
- Visual report page: Awwwards `Environment Report`, using research-storytelling and real SVG/DOM data objects.
- Product/company page: Awwwards `Neurable AI - Landing Page`, using a black/white product-launch skeleton.

These experiments are the evidence behind the Awwwards Reference Scout, Specific Site First, Style Diversity Gate, Self Evolution Loop, Low Disturbance Mode, Evidence Before Rule, and Desktop First Experiment Mode rules.

## Reference Forensics

Concrete reference work now uses:

```text
skills/premium-web-workflow/references/reference-forensics-protocol.md
```

This protocol requires original-site access checks, reference screenshots, visual DNA extraction, mechanics-to-content mapping, Chinese typography adaptation, GSAP motion translation, and side-by-side screenshot verification before claiming a strong reference match.

## Recommended Prompt To Use

For direct reuse:

```text
请按 premium-web-workflow 的 MotionSites Direct Reuse Mode 来做。我会从 https://motionsites.ai/ 复制一个 prompt 给你。先 1:1 复刻，截图验证后再改成我的品牌和内容。
```

For page review:

```text
请用 premium-web-workflow 和 zhangliang-web-taste 评审这个页面，重点看它为什么像 PPT、Hero 是否失败、图片/视频资产是否应该本地化、移动端首屏是否成立。
```

For normal webpage creation:

```text
做一个公司官网首页，按 premium-web-workflow 默认流程走。先读取 Web Design Vault Lite，选一个视觉母版并形成简短 Design Contract，再做沉浸式 Hero 方案和视觉资产，不要先排文字内容。如果能找到合适的 MotionSites 直接复用模板，先让我选；如果没有，就进入参考模式。
```

For reference-led premium work:

```text
做这个网页前，请先明确参考来源：要么让我从 MotionSites / Godly / Variant / Impeccable 选一个，要么你先说你选了哪个具体参考方向。不要直接开干，也不要做成你默认的左侧大标题、右侧影像模子。
```

For low-disturbance Awwwards scouting:

```text
做这个网页前，请按 premium-web-workflow 的 Awwwards Reference Scout 走。只从 Awwwards 找 3 个具体网页候选，给出候选表，然后你自己选 1 个主参考并说明要避开上一版哪个模子。先做桌面端实验页，截图验收后再决定是否写回 Skill。
```

For concrete reference replication:

```text
我给你一个参考网页。请先按 Reference Forensics Protocol 拆解：验证原站能打开，截参考首屏和中段，提取视觉 DNA，写出“参考机制 -> 我的内容”的映射表，再开始实现。实现后把参考截图和我们页面截图并排打分，低于 4/5 不要说已经参考成功。
```

For GSAP motion:

```text
这个页面需要高级动效。请先把参考网站的动效拆成 GSAP motion plan：哪些用 CSS transition，哪些用 gsap timeline，哪些用 ScrollTrigger pin/scrub，哪些需要 reduced-motion fallback。动效必须解释层级、连接 section 或呈现产品状态，不要只做漂浮装饰。
```

For Godly deep reference:

```text
请按 premium-web-workflow 的 Godly Deep Reference Layer 来做。先从 https://godly.website/ 或我给的 Godly 参考里选 2-3 个真实网站，深度拆解 Hero 几何、视觉资产、字体、色彩材质、动效、交互状态和移动端，然后写成可执行的复刻 brief，再开始实现。目标是复刻效果和机制，不复制品牌素材/文字/代码。
```

For visual dashboards:

```text
做一个可视化看板，默认激活 premium-web-workflow。先按 Web Design Vault Lite 判断是 Premium Research Dashboard、Data Story Map 还是内部 command surface。如果是公开展示/行业地图，就先做 Hero-first 沉浸式首屏；如果是内部运营看板，就做成高级、密集、可交互的决策界面，不要做成 PPT 图表卡片。
```

If another thread jumps straight to `frontend-app-builder`:

```text
你可以用 frontend-app-builder 来落地代码，但它不能替代 premium-web-workflow。这个任务不是普通静态 HTML 报告，而是可视化网页/战略看板。请先按 premium-web-workflow 做设计入口：Hero-first、必要时用 Godly Deep Reference、真实 DOM/SVG/canvas 图表、交互状态和浏览器截图验证，然后再用 frontend-app-builder 实现。
```

If the Hero becomes huge text on a dark background:

```text
这个 Hero 不合格：Hero-first 不是把标题放到巨大，也不是用深色网格/粒子/发光替代主视觉。请重做首屏：先生成或准备一个真正的 Hero 主视觉资产，标题压缩为一个清晰判断，辅助文案控制在一句话，长段结论移到下一屏。首屏必须有视觉主体、留白和可读层级，不能左侧密密麻麻堆字。
```

For Chinese longform/knowledge illustrations:

```text
做一个中文知识型网页，首页按 Hero-first 做沉浸式首屏；中段如果有抽象判断或流程，请调用 ian-xiaohei-illustrations 生成 2-4 张小黑式正文解释插图，作为穿插内容，不要用它替代图表/按钮/交互组件。
```

For Xiaohei 2.0 real-object scenes:

```text
做一个中文知识型网页，首页仍按 Hero-first 和 image_gen 做高级主视觉；正文中段如果要表达用户处境、AI 时代焦虑、项目复盘、产品演化或故事转折，请调用 ian-xiaohei-scenes 生成小黑 2.0 实物场景正文图。1.0 负责拆逻辑/流程，2.0 负责真实物件小现场/长卷故事。
```

If another thread does not recognize Xiaohei immediately:

```text
请不要把“小黑式”当成普通风格词自己脑补。请先检查是否有 ian-xiaohei-illustrations skill；如果当前可用列表没有，但本机已安装，请直接读取 /Users/kukuazhang/.codex/skills/ian-xiaohei-illustrations/SKILL.md，按它的规则先做 shot list，再逐张生成。小黑图只用于正文解释插图，不处理首页 Hero；图片内不要出现英文、大标题或 PPT 流程图。
```

For custom Hero video:

```text
这个 Hero 的 MotionSites 构图和视频尺寸我喜欢，但视频内容不是我的产品。请按 seedance-video-asset 流程，先估价并确认，再生成一个同样节奏/比例/循环方式的本地视频资产替换进去。
```

## Important Asset Rule

For bitmap images, the default provider is Codex built-in `image_gen`, treated as the GPT Image path. This applies to Hero background plates, product/robot/object renders, editorial scenes, section illustrations, textures, poster frames, and static fallback images.

For Hero images specifically, default to `image_gen` bitmap output. Do not hand-roll SVG Hero illustrations unless the user explicitly asks for SVG-native art. SVG remains appropriate for icons, connector lines, charts, diagrams, timelines, and interactive data structures.

Do not use Seedance for images. Seedance is only an optional video asset provider. Do not require Midjourney, Stable Diffusion, or other external image services unless the user explicitly chooses them.

MotionSites prompts often include remote video/image URLs. For experiments, it is acceptable to use them first. For real usage:

- download or move key videos/images/fonts to your own project/CDN when licensing permits;
- keep remote URLs only as backup;
- add a fallback poster, generated static frame, CSS background, or gradient scene;
- replace assets whose license or persistence is uncertain.

## Secret And Cost Rules

Never commit API keys to this repository or any skill file.

Seedance access should come from one of these places only:

- a local environment variable such as `ARK_API_KEY`;
- a local `.env` file that is ignored by Git;
- a private backend/proxy that owns the key and enforces team budgets.

Before calling a paid video API, Codex should estimate the likely cost and ask for explicit confirmation. For background Hero loops, prefer `generate_audio=false`, 720p, and 4-6 seconds unless the user asks for a final 1080p asset.

## Version History

See `CHANGELOG.md`. GitHub also shows every committed iteration through the commit history.

## Third-Party Attribution

`ian-xiaohei-illustrations` is created by Ian / helloianneo and is included under the MIT License with NOTICE. The recurring "小黑" character is Ian's visual language for Chinese article illustrations. See `THIRD_PARTY_NOTICES.md`.

`ian-xiaohei-scenes` is also created by Ian / helloianneo and is included under the MIT License with NOTICE and its required example masters.

## Notes

These skills are workflow and taste instructions. They work best when Codex also has access to frontend tooling, browser screenshots, image generation, and animation libraries such as GSAP or Framer Motion.
