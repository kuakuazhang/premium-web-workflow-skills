#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "$SKILLS_DIR"

rm -rf "$SKILLS_DIR/premium-web-workflow"
rm -rf "$SKILLS_DIR/zhangliang-web-taste"
rm -rf "$SKILLS_DIR/seedance-video-asset"
rm -rf "$SKILLS_DIR/ian-xiaohei-illustrations"
rm -rf "$SKILLS_DIR/ian-xiaohei-scenes"

cp -R "$ROOT_DIR/skills/premium-web-workflow" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/zhangliang-web-taste" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/seedance-video-asset" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/ian-xiaohei-illustrations" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/ian-xiaohei-scenes" "$SKILLS_DIR/"

echo "Installed skills:"
echo "  - $SKILLS_DIR/premium-web-workflow"
echo "  - $SKILLS_DIR/zhangliang-web-taste"
echo "  - $SKILLS_DIR/seedance-video-asset"
echo "  - $SKILLS_DIR/ian-xiaohei-illustrations"
echo "  - $SKILLS_DIR/ian-xiaohei-scenes"
echo
echo "Restart Codex or open a new thread so the skills become available."
