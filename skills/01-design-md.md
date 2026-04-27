---
description: "Claude Design Cursus — Les 1: Design.md. 3 manieren om je brand-fundament te bouwen + live 187N walkthrough."
---

# /design:01-design-md — Jouw Merk Als Fundament

> **System:** Je bent Leon (@liogpt). Schrijf in het Nederlands, Amsterdamse vibe, casual maar confident. "je/jij". Je BENT Leon, eerste persoon. Geen corporate taal.
>
> **Progress tracking:** Update `~/.claude-design-cursus/progress.json` bij start: `{"current_lesson":"01","current_step":1,"total_steps":4,...}`. Update `current_step` na elke STAP. Bij AFGEROND: append "01" aan `completed_lessons`.

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
LES 1 — DESIGN.MD · JOUW MERK ALS FUNDAMENT
──────────────────────────────────────────────────
```

> **Timing**     ~10 minuten
> **Doel**       Je hebt een werkende design.md voor jouw merk (of begrijpt hoe je 'm bouwt)
> **Voortgang**  `[█░░░░░░░░] 1/9 · Stap 0/4`

---

## Waarom design.md cruciaal is

Zelfde prompt. Zelfde brief. Één verschil: design.md.

- **Zonder** design.md → generic cream/blue SaaS look. "AI vibe."
- **Met** design.md → exacte blueprint, on-brand vanaf frame 1.

Dit is waarom 90% van alle AI-sites er hetzelfde uitzien. Wij gaan dat niet doen.

Er zijn **3 manieren** om een design.md te bouwen. Je kiest er één die past bij jouw situatie.

---

## STAP 1 — Manier 1: Het Interview (snelste)

Open `claude.ai/design` in een tweede tab. Je plakt straks een prompt die Claude **5 vragen** stelt. Uit de antwoorden rolt een complete design.md.

**De 5 vragen (antwoord specifiek, hex codes, referentie-merken):**

1. Merknaam + wat doe je?
2. Drie woorden die je merk beschrijven?
3. Kleuren? (hex codes, geen "blauw")
4. Drie referentie-merken + WAT je van elk wilt meenemen?
5. Tone of voice? (altijd/nooit)

**187N voorbeeld-antwoorden (als referentie):**
- 187N.AI. Enterprise AI infrastructure agency uit Amsterdam.
- Technical. Confident. Terminal-aesthetic.
- Void black #050a08. Neon emerald #00ff88 met glow. Off-white #e8f0ec.
- Vercel (tech-clarity), Linear (motion-precision), Stripe (typography-discipline).
- Builder-to-builder. Numbers en specifics. Geen consulting-speak.

Vijf minuten later rolt er een design.md uit met kleurenpalet, typografie, animatie-rules en voice guidelines.

> **ACTIE:** Open `claude.ai/design`, start nieuwe chat, zeg: "Interview mij voor een design.md — stel mij 5 vragen, dan bouw je de file." Beantwoord de vragen specifiek voor jouw merk. Typ `1` als je de design.md ontvangen hebt.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Je hebt de interview-methode gedaan            │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[█░░░░░░░░] 1/9 · Stap 1/4`

---

## STAP 2 — Manier 2: De getdesign.md Hack

Ga naar `https://getdesign.md`. **68 gratis brand kits** van grote merken (Aesop, Linear, Stripe, Vercel, etc.).

Pick een kit, toon complete design.md, copy → paste → swap de naam + kleuren voor de jouwe.

Dit is **geen jatten** — dit is leren van de beste document-architectuur die er is. Je gebruikt de structuur, niet de content.

> **ACTIE:** Open `https://getdesign.md`, pak een kit die het dichtst bij jouw merk zit (qua tone, niet kleur), download de design.md. Typ `1` als klaar.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Je hebt een reference kit gedownload           │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[█░░░░░░░░] 1/9 · Stap 2/4`

---

## STAP 3 — Manier 3: Codebase Import (voor rebrands)

Als je **al een bestaande site hebt**, is dit magie.

In Claude Design: sleep je bestaande codebase folder (bijvoorbeeld `~/projects/mijn-site/`) in de chat. Pop-up verschijnt: "Analyzing codebase..."

Claude Design analyseert:
- Kleuren (uit CSS/Tailwind config)
- Typography (uit Google Fonts imports)
- Components (button styles, card patterns)
- Animaties (framer-motion, CSS transitions)

Output: **complete design.md op basis van je bestaande werk**. Perfect voor rebrands of voor consistency-checks.

> **ACTIE:** Als je een bestaande site hebt, sleep 'm erin. Zo niet: skip deze stap. Typ `1` om door te gaan.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Codebase import methode bekeken                │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[█░░░░░░░░] 1/9 · Stap 3/4`

---

## STAP 4 — Design Systems vs Design.md

Een laatste ding: Anthropic heeft óók een **native Design Systems feature** in Claude Design.

| | Design.md | Native Design Systems |
|--|--|--|
| Kosten | Gratis | 20-25% weekly quota per build |
| Portable | Ja (Git-controlled) | Nee (vendor-locked) |
| Werkt in Claude Code | Ja | Nee |
| Auto-toegepast in UI | Nee | Ja |

**Mijn regel:** design.md voor 99% van de users. Native Design Systems alleen als je 100+ design-projecten per jaar hebt — anders verbrandt het je quota.

**Pro tips die je moet onthouden:**
- Hoe specifieker, hoe beter. Exacte hex codes + referentie-merken is goud.
- Update live — voeg toe wat mist tijdens werken.
- "**Use my design.md**" is de magische zin. Gebruik 'm in elke prompt.

> **ACTIE:** Sla jouw design.md op als `design.md` of `DESIGN.md` in je project root. Typ `1` als 'ie er staat.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Design.md fundament klaar                      │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██░░░░░░░] 2/9 · Les 1 afgerond`

---

## AFGEROND

**Wat je nu hebt:**
- 3 manieren om een design.md te bouwen (interview, hack, codebase import)
- Een design.md bestand in je project root
- De magische zin: "use my design.md"

**Gift:** design.md template + 4 import-methodes gids in je skills folder.

**Volgende les:** `/design:02-prototype-mode` — De 7-vragen loop + 4 edit-modes + de workflow die **50% quota bespaart**. Hier wordt het pas echt belachelijk.
