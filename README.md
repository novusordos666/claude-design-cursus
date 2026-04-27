# Claude Design Cursus

Interactieve cursus. Lees instructies in je Claude Code terminal, voer uit in Claude Design browser, volg voortgang live in dashboard. 9 lessen, ~75 min, gratis.

## Installatie (2 min)

**Nodig:**
- Claude Code geinstalleerd
- Claude Pro of Max (voor claude.ai/design)
- Python 3 (`python3 --version`)
- Voor Les 6: GitHub CLI (`gh`) + Vercel CLI (`vercel`)

**Install:**

```bash
git clone https://github.com/novusordos666/claude-design-cursus.git
cd claude-design-cursus
./install.sh
```

Het script:
1. Kopieert 9 skills naar `~/.claude/commands/design/`
2. Maakt progress folder in `~/.claude-design-cursus/`
3. Start dashboard op http://localhost:8765/dashboard.html
4. Opent browser automatisch

**Starten:**

In Claude Code terminal:
```
/design:00-intro
```

Dashboard updatet live mee.

## Lessen

| # | Skill | Duur | Onderwerp |
|---|-------|------|-----------|
| 0 | `/design:00-intro` | 3 min | Welkom + token economics + setup |
| 1 | `/design:01-design-md` | 10 min | Design.md fundament (3 manieren) |
| 2 | `/design:02-prototype-mode` | 12 min | 7-vragen loop + 4 edit-modes |
| 3 | `/design:03-multi-page` | 10 min | One-pager website (Orbis.Nft) |
| 4 | `/design:04-mobile-decks` | 10 min | Mobile app + investor deck |
| 5 | `/design:05-hero-video` | 10 min | Nano Banana -> Seedance |
| 6 | `/design:06-live-website` | 12 min | /build-page + /deploy-site |
| 7 | `/design:07-command-center` | 6 min | Alles in 30 min |
| 8 | `/design:08-outro` | 30 sec | Recap + volgende stappen |

## Troubleshooting

- Dashboard opent niet: plak zelf in browser `http://localhost:8765/dashboard.html`
- Skill niet herkend: check `ls ~/.claude/commands/design/` — moet 9 .md files tonen
- Server stoppen: `lsof -ti:8765 | xargs kill -9`

—
Lio The AI Operator · lio.circle.so
