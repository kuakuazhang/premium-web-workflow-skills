---
name: seedance-video-asset
description: Use when a webpage, Hero section, landing page, MotionSites reproduction, visual frontend, or marketing page needs a custom generated video asset through Volcengine Seedance 2.0 / Seedance 2.0 fast. Also use when the user wants to replace a remote/demo background video with an owned product/scene animation. Never use automatically without cost confirmation.
---

# Seedance Video Asset

This skill is an optional video-asset provider for premium webpage work. It is not the default webpage workflow and it must not run paid generation silently.

Use it when the user needs a generated video asset for:

- full-bleed Hero background video
- product or scene motion that image generation cannot express
- replacing a MotionSites demo video while preserving the same layout, aspect ratio, duration, and loop feel
- abstract premium motion plates, cinematic background loops, product reveal loops, or scroll-section video textures

Do not use it for static images. Use the normal image generation path for bitmap images.

## Hard Rules

- Never put `ARK_API_KEY` or any API key in a skill file, repository, prompt, README, or committed code.
- Read credentials only from a local environment variable, ignored local `.env`, or a private backend/proxy.
- Before any paid API call, estimate the likely cost and ask the user for explicit confirmation.
- For team usage, prefer a private backend/proxy with per-user budgets instead of sharing one person's API key.
- Generated `video_url` values are temporary. Download the result into the project immediately and use local paths in the webpage.
- Add a fallback visual: poster frame, generated still, CSS background, or non-video Hero composition.

## Official API Shape

Create task:

```http
POST https://ark.cn-beijing.volces.com/api/v3/contents/generations/tasks
Authorization: Bearer $ARK_API_KEY
```

Query task:

```http
GET https://ark.cn-beijing.volces.com/api/v3/contents/generations/tasks/{id}
Authorization: Bearer $ARK_API_KEY
```

Official documentation:

- Seedance 2.0 API reference: `https://www.volcengine.com/docs/82379/1520757?lang=zh`
- Base URL and auth: `https://www.volcengine.com/docs/82379/1298459?lang=zh`
- Query task API: `https://www.volcengine.com/docs/82379/1521309?lang=zh`
- Model prices: `https://www.volcengine.com/docs/82379/1544106?redirect=1&lang=zh`
- Resource package rules: `https://www.volcengine.com/docs/82379/2191775?lang=zh`

## Model Choice

Use `doubao-seedance-2.0-fast` when:

- the asset is an experiment, draft, or background loop
- 480p or 720p is enough
- speed and cost matter more than maximum fidelity

Use `doubao-seedance-2.0` when:

- the asset is final, public, or needs higher quality
- 1080p is required
- the page depends heavily on the video as the main visual subject

Default webpage Hero settings:

- `resolution`: `720p`
- `ratio`: `16:9`, `21:9`, or `9:16` depending on the implemented layout
- `duration`: `4` to `6`
- `generate_audio`: `false` for background loops
- `watermark`: `false` unless the user wants an AI watermark

## Cost Guardrail

Use official price examples as a quick estimate before calling the API:

- 16:9, 5s, 720p, no video input: about RMB 4.00 with fast, about RMB 4.97 with standard.
- 16:9, 5s, 1080p, no video input: about RMB 12.39 with standard. Fast does not support 1080p.
- 16:9, 5s output with video input can cost more because input video duration is counted.

State the estimate in plain language:

```text
预计这次是 720p / 5 秒 / fast 背景视频，官方参考价大约 4 元人民币。是否继续调用 Seedance？
```

If the user has not confirmed, stop before the API call.

## MotionSites Video Replacement Mode

Use this when a MotionSites design looks right but the demo video content is wrong for the user's product or story.

1. Reproduce the MotionSites page first using the official copied prompt.
2. Inspect the demo video's role:
   - aspect ratio and crop
   - visible subject size
   - camera movement
   - duration and loop feel
   - brightness/contrast under text
   - whether it is background texture or main narrative content
3. Keep the useful mechanics: video dimensions, object-fit behavior, overlay treatment, CTA placement, typography relationship, and loop timing.
4. Write a Seedance prompt for the user's actual content while matching those mechanics.
5. Generate only after cost confirmation.
6. Download the generated video to the project, usually `public/assets/`.
7. Replace the demo video source with the local file and keep a poster/fallback.
8. Browser-verify the Hero again on desktop and mobile.

Do not regenerate the whole webpage just because the video changed. Preserve the working layout and swap the asset surgically.

## Prompt Pattern

Write Seedance prompts as video-direction briefs, not generic image prompts:

```text
Create a seamless 5-second looping cinematic background video for a premium website hero.
Subject: [product/scene/metaphor].
Composition: [full-bleed / centered object / wide negative space / text-safe left area].
Motion: [slow camera drift / subtle parallax / object reveal / liquid particles / data streams].
Lighting: [premium, restrained, high contrast, clean shadows].
Style: [brand/domain style].
Constraints: no readable text, no UI buttons, no logos unless provided, text-safe area preserved.
```

For website backgrounds, avoid generated text inside the video. Real headline, CTA, labels, and navigation must remain HTML.

## Web Implementation Rules

When adding the generated asset to a frontend:

- use the local video file first
- set `muted`, `loop`, `playsInline`, and `autoPlay`
- use `object-fit: cover` unless the design needs containment
- add a poster or CSS fallback
- keep important text and controls as DOM above the video
- verify mobile cropping manually

Example structure:

```html
<div class="hero-video-fallback">
  <video autoplay muted loop playsinline poster="/assets/hero-poster.jpg">
    <source src="/assets/hero-seedance.mp4" type="video/mp4" />
  </video>
  <div class="hero-content">...</div>
</div>
```

## When Not To Use

Avoid Seedance when:

- a static generated image is enough
- the page is an internal learning/report page and video would not improve comprehension
- the budget is unclear
- the user has not confirmed the estimated paid call
- real-person face reference material would violate platform restrictions
