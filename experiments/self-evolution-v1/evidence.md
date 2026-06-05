# Premium Web Workflow 自我进化实验 V1

本轮执行计划：3 轮低打扰实验，只从 Awwwards 找候选；每轮 3 个具体网页候选，选择 1 个主参考，完成桌面端实验页和截图验收。实验阶段不做移动端细修。

## Round 1 - Skill 介绍页 / 动效作品集

本轮刻意避开：上一版的全屏视频 landing、左文右视觉、底部指标条、玻璃卡片堆叠。

| 候选 | Awwwards 链接 | 原站/作者线索 | 适合原因 | 可借机制 | 风险 |
| --- | --- | --- | --- | --- | --- |
| AW Portfolio | https://www.awwwards.com/sites/aw-portfolio | https://wodniack.dev / Antoine Wodniack | 最适合训练“动效作品集 / 创意工具感” | 斜向作品墙、漂浮案例、强 intro、滚动中的作品切换 | 过度实验会损害 Skill 说明的清晰度 |
| Portfolio '25 | https://www.awwwards.com/sites/portfolio-25-1 | Roman Jean-Elie portfolio / Awwwards 2025 submission | 最新作品集方向，可用于避免旧式 landing | 巨大作品集标题、案例入口、视觉张力 | 页面信息不足，深拆成本高 |
| Layout Land | https://www.awwwards.com/sites/layout-land | https://layout-land-production.webflow.io / Refokus | 适合训练布局机制而不是视觉装饰 | 版式实验、页面结构变化、landing 组件节奏 | 偏模板/布局主题，未必足够像 Skill 产品 |

选择主参考：AW Portfolio。原因：它明确包含 Intro animation、Hero animation、3D gallery、Work gallery，更适合把 Skill 介绍做成“设计引擎作品集”，而不是普通产品官网。

设计骨架拆解：

- 首屏几何：大标题不占满整屏左侧，而是和漂浮作品面板共同构成第一视口。
- 页面骨架：Hero -> Gallery -> Process -> Failure Wall -> Install，像作品集案例展示。
- 滚动节奏：作品面板漂浮，主体内容分块进入，不使用连续三列卡片。
- 导航：顶部胶囊导航，强调“参考 / Hero / 流程 / 验收 / 安装”。
- 视觉资产边界：图片只作为作品墙视觉素材；真实说明、按钮、流程仍是 HTML。

实验页：`round-1-skill-portfolio.html`

截图：

- 首屏：`screenshots/round-1-hero.png`
- 内容 1：`screenshots/round-1-section-reference.png`
- 内容 2：`screenshots/round-1-section-process.png`

桌面自评分：

- Hero 沉浸感：4.3/5
- 参考机制还原：4.2/5
- 中文排版：4.4/5
- 内容完整度：4.1/5
- 桌面布局差异度：4.5/5

可写回规则：如果做 Skill / 工具介绍页，不能默认产品官网骨架；可以先找作品集或创意工具参考，用“案例墙 / 引擎台 / 工作流展馆”来承载内容。

## Round 2 - 行业报告 / 可视化网页

本轮刻意避开：第 1 轮的红黑作品墙、漂浮卡、创意作品集节奏。

| 候选 | Awwwards 链接 | 原站/作者线索 | 适合原因 | 可借机制 | 风险 |
| --- | --- | --- | --- | --- | --- |
| Environment Report | https://www.awwwards.com/sites/environment-report | https://umwelt-schweiz.ch / BOLD | 最适合训练“复杂主题变成可吃的单页报告” | 蓝绿黄配色、数据可视化、snackable single page、SVG / Vue | 主题偏教育环保，需要改造成网页生产报告 |
| The State of Independence | https://www.awwwards.com/sites/the-state-of-independence | https://contra.com / Unseen Studio + Contra | 适合训练交互报告和关键洞察展示 | 数据洞察、3D/WebGL、调查报告叙事 | 3D 还原成本高，容易重回炫技 |
| Annual Report Website | https://www.awwwards.com/sites/annual-report-website | https://arup2.mc-staging.net / Mallard & Claret | 适合训练年报/报告沉浸表达 | 3D annual report、GSAP、Three.js、Gallery | 黑色 3D 与其他轮次易撞风格 |

选择主参考：Environment Report。原因：Awwwards 页面明确给出 Data Visualization、Storytelling、SVG、蓝绿黄调色，最适合把“反 PPT 网页生产”做成一页可视化报告。

设计骨架拆解：

- 首屏几何：不是封面大标题，而是“报告标题 + 数据雷达 + 结论条”并列。
- 页面骨架：Narrative Lead -> Signal Map -> Failure Matrix -> Recipe Timeline -> Evidence Gate。
- 滚动节奏：每屏进入一个可视化对象，避免等高卡片堆叠。
- 导航：细条报告导航，像研究报告目录，不像官网 CTA。
- 视觉资产边界：用 SVG/canvas 做数据对象；不用截图当图表。

实验页：`round-2-visual-report.html`

截图：

- 首屏：`screenshots/round-2-hero.png`
- 内容 1：`screenshots/round-2-section-map.png`
- 内容 2：`screenshots/round-2-section-matrix.png`

桌面自评分：

- Hero 沉浸感：4.0/5
- 参考机制还原：4.1/5
- 中文排版：4.3/5
- 内容完整度：4.4/5
- 桌面布局差异度：4.6/5

可写回规则：可视化网页不能只做“报告封面 + 卡片区”；至少要把一个核心判断做成真实图形对象，并用矩阵、时间轴或关系图承担学习价值。

## Round 3 - 公司官网 / 产品页

本轮刻意避开：第 1 轮作品墙、第 2 轮报告数据图、蓝绿黄研究气质。

| 候选 | Awwwards 链接 | 原站/作者线索 | 适合原因 | 可借机制 | 风险 |
| --- | --- | --- | --- | --- | --- |
| Neurable AI - Landing Page | https://www.awwwards.com/sites/neurable-ai-landing-page | https://www.neurable.io / Red Shark Digital | 最适合训练“产品发布 / 高级商业质感” | 黑白、Fullscreen、Parallax、Scrolling、Typography | 黑白风容易冷，但产品感强 |
| Nisa - AI Chatbot Landing Page | https://www.awwwards.com/sites/nisa-ai-chatbot-landing-page | https://nisa.peachworlds.com / PeachWeb Builder | 适合 AI 产品页和 3D 互动 | 暖橙黑、3D AI、Interaction Design | 可能偏模板化 AI SaaS |
| Kriss.ai | https://www.awwwards.com/sites/kriss-ai | https://kriss.ai / Studio 28K | 适合医疗 AI / 高级交互官网 | hotspot hover、zoom transition、storytelling、3D | 行业语义较窄 |

选择主参考：Neurable AI - Landing Page。原因：它的 Awwwards 信息明确包含 Fullscreen、Parallax、Scrolling、Typography，更适合训练公司官网/产品页的高级首屏和商业叙事。

设计骨架拆解：

- 首屏几何：黑白高对比全屏，产品对象居中，标题围绕对象构成发布感。
- 页面骨架：Product Hero -> Promise Strip -> Capability Scenes -> Proof Rail -> CTA。
- 滚动节奏：大图像/大对象一屏一主题，内容少而准。
- 导航：极简顶部导航，CTA 不抢主视觉。
- 视觉资产边界：产品对象用 CSS 3D / code-native scene 表达；所有文案和按钮仍为 HTML。

实验页：`round-3-product-site.html`

截图：

- 首屏：`screenshots/round-3-hero.png`
- 内容 1：`screenshots/round-3-section-scenes.png`
- 内容 2：`screenshots/round-3-section-proof.png`

桌面自评分：

- Hero 沉浸感：4.2/5
- 参考机制还原：4.0/5
- 中文排版：4.4/5
- 内容完整度：4.1/5
- 桌面布局差异度：4.4/5

可写回规则：公司/产品页要像“发布一个产品”，不是解释一个流程；首屏需要一个强对象或空间锚点，正文用场景和证明延展。

## 三轮差异化结论

| 维度 | Round 1 | Round 2 | Round 3 |
| --- | --- | --- | --- |
| 色彩 | 红黑 / 纸感网格 | 蓝绿黄 / 研究报告 | 黑白银 / 产品发布 |
| Hero 骨架 | 漂浮作品墙 + 大短标题 | 报告标题 + 数据对象 | 全屏产品对象 + 发布标题 |
| 内容骨架 | Gallery / Case / Failure Wall | Signal Map / Matrix / Timeline | Scenes / Proof / CTA |
| 动效方式 | 作品面板漂浮 | 滚动进度 + 数据点脉冲 | 产品视差 / 光带扫过 |
| 字体节奏 | 超大作品集标题 | 编辑式报告标题 | 产品官网发布标题 |

## 写回 Skill 的最终规则

这 3 轮完成后，写回以下规则：

1. `Awwwards Reference Scout`
2. `Specific Site First`
3. `Style Diversity Gate`
4. `Self Evolution Loop`
5. `Low Disturbance Mode`
6. `Evidence Before Rule`
7. `Desktop First Experiment Mode`
