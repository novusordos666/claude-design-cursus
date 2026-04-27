---
description: "Claude Design Cursus — Les 6: Van Design naar Live Website. /build-page + /deploy-site. Orbis.Nft naar production URL."
---

# /design:06-live-website — Van Design naar Live Website

> **System:** Je bent Leon. Nederlands, Amsterdamse vibe. "je/jij". Dit is de meest technische les — blijf praktisch, geen fluff.
>
> **Progress tracking:** Update `~/.claude-design-cursus/progress.json`: `{"current_lesson":"06","current_step":1,"total_steps":6,...}`. Update na elke STAP. Bij AFGEROND: append "06" aan `completed_lessons`.

```
██╗     ██╗ ██████╗ 
██║     ██║██╔═══██╗
██║     ██║██║   ██║
██║     ██║██║   ██║
███████╗██║╚██████╔╝
╚══════╝╚═╝ ╚═════╝ 
  T H E   A I   O P E R A T O R
                Claude Design Cursus
──────────────────────────────────────────────────
LES 6 — VAN DESIGN NAAR LIVE WEBSITE · ORBIS DEPLOY
──────────────────────────────────────────────────
```

> **Timing**     ~12 minuten
> **Doel**       Je hebt je Orbis design live op een Vercel URL, SSL enabled, CDN actief
> **Voortgang**  `[██████░░░] 6/9 · Stap 0/6`

---

## Waarom dit de kritieke les is

Dit is waar 90% van de mensen afhaakt.

Prachtig Orbis.Nft design in Claude Design. Mooi. **Maar hoe wordt het een LIVE URL?** Hoe neemt de klant het over? SEO? Performance? Analytics?

Dit is productie. Geen prototype meer.

---

## STAP 1 — De Handoff uit Claude Design

Open je Orbis.Nft Claude Design project uit Les 3.

**Flow:**
1. Click **Export dropdown**
2. Click **"Handoff to Claude Code"**
3. Claude Design genereert een lange prompt (honderden regels specs)
4. **Copy to clipboard**

Deze prompt bevat **alles**: kleuren (#010828 / cream / neon), fonts (Anton / Condiment / mono), liquid-glass CSS class, video URLs, responsive breakpoints, alle secties.

Dit is Claude Design's cheatcode. Claude Code krijgt een **perfecte briefing**.

> **ACTIE:** Export → Handoff to Claude Code → copy. Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Handoff prompt in je clipboard                 │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██████░░░] 6/9 · Stap 1/6`

---

## STAP 2 — De CLAUDE.md Webapp Blueprint

Voor Claude Code echt kan bouwen, heeft het een **handboek** nodig. Dit is een CLAUDE.md — maar dan voor je webapp.

**Key secties die erin horen:**

**Tech Stack** (vastgelegd, niet onderhandelbaar):
- Vite + React 18 + TypeScript
- Tailwind CSS 3+
- lucide-react voor icons
- Google Fonts: Anton + Condiment

**Folder Structure:**
- Components in `src/components/`
- Sections in `src/components/sections/`
- Assets in `public/`
- `public/texture.png` vereist (subtle grain overlay)
- Named exports. TypeScript strict.

**Liquid Glass Rules:**
- `.liquid-glass` class op navbar, social buttons, NFT cards, overlay bars
- `backdrop-filter blur(4px)`, inset shine 1px, conic border mask
- NIET op bg-only elementen — alleen containers met content

**Video Rules:**
- Alle CloudFront URLs: `autoPlay loop muted playsInline`
- Hero section: `object-cover`
- CTA section: `w-full h-auto block` (native aspect)

**Waarom werkt dit:** ORBIS-DESIGN.md + CLAUDE.md + Claude Design export = Claude Code kan niet falen.

> **ACTIE:** Je krijgt de complete CLAUDE.md webapp blueprint als gift na deze les. Voor nu: snap je waarom deze 3 inputs samen werken? Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Je snapt de 3-input briefing (design.md +      │
│  CLAUDE.md + export)                            │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██████░░░] 6/9 · Stap 2/6`

---

## STAP 3 — /build-page Skill

Open je **Claude Code terminal**. Type:

```
/build-page
```

Claude Code vraagt een reeks vragen:

| Vraag | Antwoord |
|-------|----------|
| Heb je een Claude Design export? | Plak de export-prompt uit je clipboard |
| Output folder? | `~/my-ai-workspace/design-builds/orbis-nft` |
| Welke secties? | 4 secties (Hero / About / Collection / CTA) |

**Claude Code start de build:**
- Scaffold Vite + React + TypeScript project
- Install Tailwind, lucide-react
- Verwerk Tailwind config met Orbis tokens (bg #010828, cream, neon)
- Registreer Anton + Condiment via Google Fonts in index.html
- Bouw secties in `components/sections`: Hero, About, Collection, CTA
- Maak liquid-glass class in index.css met complete conic border-mask
- Download texture.png of placeholder naar public/

**Als je `/build-page` nog niet hebt:** die komt in de skills zip van deze cursus. Voor nu: maak handmatig de folder en run `npm create vite@latest orbis-nft -- --template react-ts`.

> **ACTIE:** Run `/build-page` (of de Vite command als backup), wacht tot de scaffold klaar is. Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Vite + React + Tailwind scaffold live          │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██████░░░] 6/9 · Stap 3/6`

---

## STAP 4 — Lokale Preview + Performance Check

Start de dev server:

```bash
cd ~/my-ai-workspace/design-builds/orbis-nft
pnpm dev
```

Wacht op `Ready on localhost:5173`. Open browser.

**Scroll door alle 4 secties:**
- [ ] Hero: full-bleed CloudFront video loop, Anton "Beyond earth" + Condiment cursive "Nft collection" in neon
- [ ] Liquid-glass navbar: 5 links, hover → text-neon
- [ ] Social icons rechts boven: 3 stuks, 56×56 liquid-glass
- [ ] About: tweede video bg, "I'm orbis" + Condiment overlay
- [ ] Collection Grid: 3 NFT cards (rarity 8.7 / 9.0 / 8.2), purple chevron buttons
- [ ] CTA: full-bleed video, "JOIN US. REVEAL. DEFINE. FOLLOW." + "Go beyond" cursive

**Performance check — Chrome DevTools:**
- Mobile viewport (iPhone 14 Pro): social icons stacken onder heading, nav hidden `lg:block`
- Video loops stoppen op low-power (check `playsInline`)
- Reduced-motion toggle: videos auto-play blijft, transitions disable
- Lighthouse audit: 90+ performance (videos zwaar, maar CloudFront CDN handles)

**Dit is waar handmatige builds 3 dagen over doen. Wij: 5 minuten.**

> **ACTIE:** Start dev server, check alle 4 secties + mobile. Typ `1` als alles klopt.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Lokale preview werkend + mobile getest         │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██████░░░] 6/9 · Stap 4/6`

---

## STAP 5 — /deploy-site naar Vercel

Terug naar Claude Code terminal. Type:

```
/deploy-site
```

Antwoorden:
- Folder? `orbis-nft`
- Repo naam? `orbis-nft`
- Private/public? Private
- Custom domain? Skip voor nu

**Claude Code runt:**
```
git init
git add . && git commit
gh repo create orbis-nft --private
vercel link
vercel deploy --prod
```

Wacht 60-90 seconden.

**Output:**
```
✓ Production: orbis-nft.vercel.app
```

**Backup als je `/deploy-site` niet hebt:** run de 5 git/gh/vercel commands handmatig. Zelfde resultaat.

> **ACTIE:** Run `/deploy-site`. Copy de live URL. Open in nieuwe tab, scroll door. Typ `1` als 'ie live is.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Orbis.Nft LIVE op orbis-nft.vercel.app         │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██████░░░] 6/9 · Stap 5/6`

---

## STAP 6 — Custom Domain (optioneel, voor klant)

Als de klant een custom domain wil:

```bash
vercel domains add orbis-nft.com
vercel alias set orbis-nft.vercel.app orbis-nft.com
```

**DNS update:** bij registrar → A record naar Vercel IP of CNAME naar `cname.vercel-dns.com`. 5 minuten. SSL automatisch.

Voor NFT klanten: custom domain **essentieel voor trust**. `orbis-nft.com`, `.xyz`, of `.io` — web3 branding.

> **ACTIE:** Als je een eigen domain wilt testen: doe de 2 vercel commands. Anders skip. Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Custom domain flow bekeken                     │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[███████░░] 7/9 · Les 6 afgerond`

---

## Recap

In deze les heb je:
1. Claude Design export genomen (honderden regels specs)
2. `/build-page` gebruikt → Vite + React + Tailwind scaffold
3. Lokaal getest → 4 secties werkend, mobile ok, videos loopen, Lighthouse 90+
4. `/deploy-site` → GitHub + Vercel production
5. Custom domain flow gezien

**Totaal: ~10 minuten van design naar live URL.**

Zonder deze stack? 2-3 dagen minimum. En dit is voor een merk dat niet eens van jou is.

---

## AFGEROND

**Wat je nu hebt:**
- Orbis.Nft live op een Vercel URL
- SSL + CDN actief automatisch
- GitHub repo aangemaakt
- Custom domain flow in je toolkit

**Gift:** `/build-page` skill + CLAUDE.md webapp blueprint voor Vite/React + liquid-glass prompt library + complete deploy recipe.

**Volgende les:** `/design:07-command-center` — Één commando dat alles doet: site + mobile + deck in **30 minuten**. Victory lap. Agency pricing reveal.
