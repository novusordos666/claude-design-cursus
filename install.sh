#!/usr/bin/env bash
set -e

# Claude Design Cursus — Installer
# Kopieert skills naar Claude Code, start lokaal dashboard, opent browser

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SKILLS_SRC="$SCRIPT_DIR/skills"
SKILLS_DEST="$HOME/.claude/commands/design"
PROGRESS_DIR="$HOME/.claude-design-cursus"
PROGRESS_FILE="$PROGRESS_DIR/progress.json"
DASHBOARD_PORT=8765

echo ""
echo "=========================================="
echo "  Claude Design Cursus — Installer"
echo "  by Lio The AI Operator"
echo "=========================================="
echo ""

# 1. Check prerequisites
if [ ! -d "$SKILLS_SRC" ]; then
  echo "ERROR: skills folder niet gevonden in $SKILLS_SRC"
  echo "Run dit script vanuit de uitgepakte cursus-folder."
  exit 1
fi

if ! command -v python3 &> /dev/null; then
  echo "ERROR: python3 niet gevonden. Installeer Python 3 via brew of python.org"
  exit 1
fi

# 2. Install skills
echo "[1/4] Skills installeren in $SKILLS_DEST ..."
mkdir -p "$SKILLS_DEST"
cp "$SKILLS_SRC"/*.md "$SKILLS_DEST/"
SKILL_COUNT=$(ls -1 "$SKILLS_DEST"/*.md 2>/dev/null | wc -l | tr -d ' ')
echo "      $SKILL_COUNT skill-bestanden geinstalleerd"

# 3. Setup progress dir
echo "[2/4] Progress folder aanmaken in $PROGRESS_DIR ..."
mkdir -p "$PROGRESS_DIR"
if [ ! -f "$PROGRESS_FILE" ]; then
  cat > "$PROGRESS_FILE" <<EOF
{
  "current_lesson": null,
  "current_step": 0,
  "total_steps": 0,
  "completed_lessons": [],
  "started_at": null,
  "last_updated": null
}
EOF
  echo "      progress.json aangemaakt (leeg)"
else
  echo "      progress.json bestaat al (bewaard)"
fi

# 4. Symlink progress.json naast dashboard (zodat dashboard 'm kan fetchen)
ln -sf "$PROGRESS_FILE" "$SCRIPT_DIR/progress.json"
echo "[3/4] Dashboard gekoppeld aan progress.json"

# 5. Start dashboard server in background
echo "[4/4] Dashboard server starten op poort $DASHBOARD_PORT ..."
# Kill any existing server on this port first
lsof -ti:$DASHBOARD_PORT | xargs kill -9 2>/dev/null || true
cd "$SCRIPT_DIR"
nohup python3 -m http.server $DASHBOARD_PORT > /tmp/claude-design-cursus.log 2>&1 &
SERVER_PID=$!
sleep 1
echo "      server draait (PID $SERVER_PID, log: /tmp/claude-design-cursus.log)"

# 6. Open browser
DASHBOARD_URL="http://localhost:$DASHBOARD_PORT/dashboard.html"
echo ""
echo "=========================================="
echo "  Setup klaar!"
echo "=========================================="
echo ""
echo "  Dashboard: $DASHBOARD_URL"
echo ""
echo "  Start in Claude Code terminal:"
echo "    /design:00-intro"
echo ""
echo "  Stoppen dashboard-server:"
echo "    kill $SERVER_PID"
echo ""

# Try to open browser (macOS / Linux / WSL)
if command -v open &> /dev/null; then
  open "$DASHBOARD_URL"
elif command -v xdg-open &> /dev/null; then
  xdg-open "$DASHBOARD_URL"
elif command -v wslview &> /dev/null; then
  wslview "$DASHBOARD_URL"
else
  echo "  (kon browser niet automatisch openen — plak URL zelf in je browser)"
fi

echo ""
echo "Veel plezier met de cursus! — Lio"
echo ""
