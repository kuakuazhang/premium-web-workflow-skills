# Premium Web Workflow Skills

Codex skills for building higher-craft webpages instead of generic AI/PPT-like pages.

This package contains two skills:

- `premium-web-workflow`: the main workflow for website, landing page, homepage, Hero, redesign, animation, and visual frontend work.
- `zhangliang-web-taste`: a personal taste layer that catches common AI-webpage failures such as PPT-like hero sections, boxed right-side images, screenshot-collage sections, weak motion, and generic card grids.

## What It Does

The workflow pushes Codex to:

1. Select or derive a strong visual direction before writing code.
2. Use MotionSites in two layers:
   - **Direct Reuse Mode**: choose a design on `https://motionsites.ai/`, paste the official `Copy` prompt, reproduce it first, then adapt.
   - **Reference Mode**: if no prompt is selected, borrow only design mechanics such as Hero composition, motion, image role, glass effects, and section rhythm.
3. Keep important text, buttons, nav, tables, charts, and diagrams as real DOM/SVG/canvas instead of flattened screenshots.
4. Use generated or local assets for Hero atmosphere, renders, textures, and visual scenes when appropriate.
5. Add meaningful motion and browser-verify desktop/mobile screenshots.
6. Localize critical remote videos/images when a page will be kept or deployed, and add fallback visuals so a dead external URL does not break the Hero.

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
```

Restart Codex or open a new thread after installing so the skills appear in the available skill list.

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
做一个公司官网首页，按 premium-web-workflow 默认流程走。如果能找到合适的 MotionSites 直接复用模板，先让我选；如果没有，就进入参考模式。
```

## Important Asset Rule

MotionSites prompts often include remote video/image URLs. For experiments, it is acceptable to use them first. For real usage:

- download or move key videos/images/fonts to your own project/CDN when licensing permits;
- keep remote URLs only as backup;
- add a fallback poster, generated static frame, CSS background, or gradient scene;
- replace assets whose license or persistence is uncertain.

## Notes

These skills are workflow and taste instructions. They work best when Codex also has access to frontend tooling, browser screenshots, image generation, and animation libraries such as GSAP or Framer Motion.

