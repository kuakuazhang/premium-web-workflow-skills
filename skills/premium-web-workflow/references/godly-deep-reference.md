# Godly Deep Reference Protocol

Use this when the user wants to use `https://godly.website/` or a Godly-listed website as a premium design reference.

Godly is a curated inspiration library, not a copy-paste template library. The goal is to reproduce the *effect* and design mechanics for the user's own content, not to copy proprietary code, text, logos, videos, or brand assets.

## When To Use

Use this protocol when:

- the user mentions Godly or `godly.website`
- the user picks a Godly entry or original site URL
- the user asks to replicate a "beautiful website effect"
- the page needs real-world premium calibration rather than AI-generated taste
- a Hero, landing page, or visual dashboard still feels like PPT after ordinary styling

## Reference Selection

If the user has not selected a reference yet:

1. Open Godly.
2. Pick 2-3 references close to the user's domain or desired feeling.
3. Prefer references whose original site is accessible and whose first viewport contains a clear design mechanic.
4. State why each reference is useful in implementation terms:
   - Hero composition
   - visual asset role
   - motion behavior
   - navigation treatment
   - typography and density
   - section rhythm

Do not pick references only because they look "nice."

## Deep Analysis Checklist

For each selected reference, inspect the original site when possible, not only the Godly thumbnail.

Capture or observe:

- desktop first viewport
- mobile first viewport
- one scroll transition or below-fold section
- one hover/interaction state if relevant
- video/canvas/WebGL state if the core effect depends on motion

Then describe the reference in these exact categories:

1. **Page Intent**
   - What does the first viewport communicate in 3 seconds?
   - Is it product-led, editorial, cinematic, system/interface-led, or abstract?

2. **Hero Geometry**
   - Layout grid and major zones
   - Text position and width
   - Visual subject position, size, crop, and depth
   - First-fold height and whether next section peeks through
   - Safe areas for text on desktop and mobile

3. **Visual Asset System**
   - Static image, video, 3D, canvas/WebGL, screenshot, illustration, typography-only, or mixed
   - Whether the asset is background, subject, product proof, atmosphere, or interaction surface
   - Needed replacement asset for the user's page
   - What must be generated, sourced, localized, or rebuilt as DOM/SVG/canvas

4. **Typography**
   - Approximate headline scale, weight, line height, tracking, and rhythm
   - Supporting copy density
   - Navigation and CTA scale
   - Whether the type feels editorial, product, utilitarian, luxury, playful, or technical

5. **Color / Material / Lighting**
   - Background color or scene lighting
   - Accent colors
   - Glass, blur, grain, shadow, border, glow, noise, or texture
   - Contrast strategy

6. **Motion**
   - Initial load behavior
   - Continuous motion, if any
   - Scroll-linked changes
   - Hover and cursor behavior
   - Timing, easing, distance, and intensity
   - Reduced-motion fallback

7. **Interaction States**
   - Nav hover/active states
   - CTA hover/focus states
   - Cards, galleries, filters, or media controls
   - Any microinteraction that makes the site feel real

8. **Responsive Behavior**
   - What changes on mobile
   - What gets hidden, stacked, cropped, scaled, or replaced
   - Whether the mobile Hero still has a strong visual signal

9. **Implementation Plan**
   - Framework/library assumptions
   - CSS layout strategy
   - Motion library or native CSS choice
   - Asset generation/localization plan
   - What to rebuild as DOM/SVG/canvas

10. **Non-Copy Boundary**
   - List anything that must not be copied directly: logo, original copy, proprietary screenshots, brand assets, videos, exact layout with same content.
   - State how to adapt it for the user's domain.

## Replication Brief Template

Before coding, write a brief like this:

```text
Reference target: [Godly entry / original URL]
Goal: reproduce the effect, not the brand.

Hero:
- viewport: [height, first-fold behavior]
- composition: [zones, alignment, visual subject placement]
- text: [scale, width, position, line rhythm]
- nav: [position, material, hover behavior]
- CTA: [shape, material, interaction]

Visual asset:
- role: [background / product subject / atmosphere / proof]
- replacement: [generated image / generated video / owned asset / SVG/canvas scene]
- crop/aspect: [desktop and mobile]
- localization/fallback: [local path, poster, CSS fallback]

Motion:
- load: [what appears first and how]
- continuous: [if any]
- scroll: [what changes]
- hover: [what responds]
- timing: [easing, duration, intensity]

Body rhythm:
- section 1: [layout and transition]
- section 2: [layout and transition]
- section 3: [layout and transition]

Implementation:
- stack: [React/Vite/Tailwind/GSAP/etc.]
- components: [real DOM/SVG/canvas elements]
- assets: [what to generate or localize]
- mobile: [first viewport behavior]

Boundaries:
- do not copy [specific logo/text/assets]
- adapt to [user brand/domain/content]
```

## 80-90% Match Requirements

An implementation can only claim a strong reference match after browser verification.

Check:

- Desktop screenshot resembles the reference in composition, not just colors.
- Mobile screenshot keeps the same design intent.
- Typography scale and spacing are close.
- Visual asset has the same role and crop behavior.
- Motion timing/intensity feels similar.
- Hover/active states exist.
- The user's actual content is integrated, not pasted into a template shell.

If the first implementation only copies colors, cards, or generic "premium" language, it fails. Return to the deep analysis and rebuild the missing mechanics.

## Practical Notes

- Godly entries often include thumbnails and videos. Use them for analysis only unless licensing clearly permits reuse.
- Prefer inspecting the original website because thumbnails can hide scroll behavior and interaction details.
- If the original site is unavailable, use Godly thumbnail/video only as a high-level reference and state the limitation.
- For video-heavy references, consider `seedance-video-asset` only after estimating cost and confirming with the user.
- For Chinese longform body sections, combine Godly for structure/Hero and `ian-xiaohei-illustrations` for editorial explanation breaks.
