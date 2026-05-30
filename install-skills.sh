#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$ROOT_DIR/05-Agent-System/Skills-Src"

usage() {
  cat <<'EOF'
Install vault skills into an agent's local skills directory.

Usage:
  ./install-skills.sh [--target codex|claude] [--dest PATH]

Options:
  --target   Agent target. Default: codex.
  --dest     Override destination directory.
  --help     Show this help.

Defaults:
  Codex:  ${CODEX_HOME:-$HOME/.codex}/skills
  Claude: ${CLAUDE_HOME:-$HOME/.claude}/skills

Examples:
  ./install-skills.sh
  ./install-skills.sh --target codex
  ./install-skills.sh --target claude
  ./install-skills.sh --target codex --dest "$HOME/.codex/skills"
EOF
}

target="codex"
dest=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      target="${2:-}"
      shift 2
      ;;
    --dest)
      dest="${2:-}"
      shift 2
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1
      ;;
  esac
done

if [[ ! -d "$SKILLS_SRC" ]]; then
  echo "Skills source directory not found: $SKILLS_SRC" >&2
  exit 1
fi

case "$target" in
  codex)
    if [[ -z "$dest" ]]; then
      dest="${CODEX_HOME:-$HOME/.codex}/skills"
    fi
    ;;
  claude)
    if [[ -z "$dest" ]]; then
      dest="${CLAUDE_HOME:-$HOME/.claude}/skills"
    fi
    ;;
  *)
    echo "Unsupported target: $target" >&2
    echo "Use --target codex or --target claude." >&2
    exit 1
    ;;
esac

mkdir -p "$dest"

installed=0
for skill_dir in "$SKILLS_SRC"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  skill_name="$(basename "$skill_dir")"
  target_dir="$dest/$skill_name"

  rm -rf "$target_dir"
  cp -R "$skill_dir" "$target_dir"
  installed=$((installed + 1))
  echo "Installed $skill_name -> $target_dir"
done

echo
echo "Installed $installed skills for target '$target'."
echo "Restart your agent session so it can reload available skills."
echo
echo "Note: connectors/MCP servers such as Granola, Gmail, or cloud storage providers are not installed by this script."
echo "Install and authenticate those separately in your agent environment."
echo
echo "Next step:"
echo "1. Restart your agent session."
echo "2. Open a fresh session from this vault root."
echo "3. Paste this prompt:"
echo
cat <<'EOF'
Use this Obsidian business vault. Read AGENTS.md, START_HERE.md, index.md, and log.md. Then use business-vault-onboarding to run a first founder interview. Ask one question at a time, starting with my name, company name, what the company does, ICP, product status, GTM, and current priorities. After each answer, update the right pages in 02-Business, update index.md if needed, and append to log.md. After the interview, propose the first action items and ask for confirmation before adding them to the Action Tracker.
EOF
