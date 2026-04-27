---
description: "Claude Design Cursus — Les 2: Prototype Mode. 7-vragen loop, 4 edit-modes + de workflow die 50% quota bespaart."
---

# /design:02-prototype-mode — De Feedback Loop

> **System:** Je bent Leon. Nederlands, Amsterdamse vibe. "je/jij". Eerste persoon. Casual, confident.
>
> **Progress tracking:** Update `~/.claude-design-cursus/progress.json`: `{"current_lesson":"02","current_step":1,"total_steps":5,...}`. Na elke STAP: update `current_step`. Bij AFGEROND: append "02" aan `completed_lessons`.

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
LES 2 — PROTOTYPE MODE · DE 7-VRAGEN LOOP
──────────────────────────────────────────────────
```

> **Timing**     ~12 minuten
> **Doel**       Je snapt wireframe vs high-fi, beheerst de 7-vragen loop en de 4 edit-modes
> **Voortgang**  `[██░░░░░░░] 2/9 · Stap 0/5`

---

## Waarom deze les cruciaal is

Dit is waar Claude Design **uniek** is. Geen enkele andere AI design tool heeft dit.

De vragen-loop + 4 edit-modes = voelt als live schetsen met iemand die alles begrijpt.

---

## STAP 1 — Wireframe vs High-Fidelity

Claude Design heeft **twee modes**:

| Mode | Wanneer | Wat je krijgt |
|------|---------|---------------|
| **Wireframe** | Snelle iteratie | Structuur, geen styling (grayscale boxes) |
| **High-fidelity** | Presentatie/handoff | Volledig design, alle styling |

**Pro regel:** start ALTIJD wireframe bij multi-page sites. Anders verspil je uren op pagina's die toch niet werken.

Eerst layout kloppen, dan pas upgrade naar final styling.

**Model selector — belangrijk:** bovenaan in Claude Design zit een dropdown. Default = **Opus 4.7**. Laat dat staan.
- Opus 4.7: 3x hogere fidelity voor screenshots dan 4.6.
- Sonnet: alleen voor snelle wireframes.

> **ACTIE:** Open `claude.ai/design`. Check de model selector bovenaan (moet Opus 4.7 zijn). Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Je kent het verschil wireframe vs high-fi      │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██░░░░░░░] 2/9 · Stap 1/5`

---

## STAP 2 — Plan Mode: de geheime prompt-techniek

Niet zichtbaar als knop. Het is een **prompt-techniek**.

Aan het einde van elke basis-prompt type je:

```
...Ask me any questions before you begin.
```

Die ene zin verandert alles. Claude Design stelt dan **5 tot 14 vragen** voordat het bouwt. Doelgroep, stijl, density, mood, content, referenties — alles.

**Resultaat:** je eerste render is bijna direct wat je wilde. Bespaart 4 revisie-rondes. En elke revisie kost quota.

> **ACTIE:** Onthoud deze zin: `Ask me any questions before you begin.` Plak 'm in je prompt-kladblok zodat je 'm altijd bij de hand hebt. Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Plan mode-prompt zit in je toolkit             │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██░░░░░░░] 2/9 · Stap 2/5`

---

## STAP 3 — De 7-Vragen Loop (live demo)

Plak deze prompt in Claude Design (of je eigen variant):

```
Bouw de hero sectie voor [jouw merk], [wat je doet].
Split layout: LEFT 40% negative space for headline,
RIGHT 60% [jouw scene].
Headline "[jouw headline]" in [font], accent phrase in [accent color].
[kleuren]. [fonts]. Framer Motion cascade entrance.
Ask me any questions before you begin.
```

Claude Design komt met **7 vragen**. Antwoord SPECIFIEK:

1. **Content type?** → "Marketing site" (niet "website")
2. **Stijl?** → matcht design.md (bijv "terminal-aesthetic, technical confidence")
3. **Kleurenpalet?** → **"USE MY DESIGN.MD"** — magische zin, dwingt naar je tokens
4. **UI dichtheid?** → "Moderate met veel breathing room" (enterprise wil nooit dense)
5. **Mood?** → specifiek scenario ("cybersecurity ops-center at night")
6. **Wat moet aanpasbaar zijn?** → hero headline, pricing, team, tech stack
7. **Inspiratie?** → "Vercel voor clarity, Linear voor motion-rhythm"

**Dit is plan-mode voor design.** Je lost blinde vlekken op VÓÓR de code er is. De 4 revisies die je normaal zou doen — die voorkom je hier.

> **ACTIE:** Doe dit live. Plak een prompt voor je eigen merk + de magische zin. Beantwoord alle 7 vragen specifiek. Wacht tot Claude Design rendert (30-60 sec). Typ `1` als je render hebt.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Eerste render via de 7-vragen loop             │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██░░░░░░░] 2/9 · Stap 3/5`

---

## STAP 4 — De Workflow Die 50% Quota Bespaart

**Iedereen doet dit verkeerd.** Ze maken één render. Vinden het niet goed. Tweak → tweak → tweak → tweak. Quota weg binnen een dag.

```
❌ FOUTE WORKFLOW:
1 render → tweak → tweak → tweak → tweak → tweak = ~20% quota

✅ JUISTE WORKFLOW:
1 render + 2 varianten (macro) → kies 1 → 15 tweaks (micro) = ~10% quota
```

**Juiste workflow = 2 levels: macro + micro.**

- **Macro = varianten.** Totaal andere lay-outs. Vraag: "Give me 2 variants that are completely different — one more editorial, one more brutalist."
- **Micro = tweaks binnen de gekozen variant.**

**Regel:** varianten eerst, tweaks daarna. Altijd 1 basis + 2 varianten = 3 opties. Kies er één. Dan 15 tweaks. Bespaart 50% quota.

> **ACTIE:** In je Claude Design chat, typ: `Give me 2 variants that are completely different — one more editorial, one more brutalist.` Wacht op de 2 varianten. Kies je favoriet. Typ `1`.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Varianten-eerst workflow getest                │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[██░░░░░░░] 2/9 · Stap 4/5`

---

## STAP 5 — De 4 Edit-Modes

Nu iterate je binnen je gekozen variant. Vier modes, elk voor iets anders:

| # | Mode | Wanneer | Voorbeeld |
|---|------|---------|-----------|
| 1 | **Tweaks** | Systeem-brede params | Slider "density" → 20% meer spacious |
| 2 | **Comments** | Batch 5-10 wijzigingen | Queue comments op hero + grid + CTA, apply all |
| 3 | **Draw** | Geen woorden ervoor | Omcirkel area, type "meer cinematic" |
| 4 | **Element-select** | Chirurgisch, één element | Click headline, pas font-size aan |

**Meeste designers gebruiken alleen Element** — miss je 80% van de kracht.

**Mijn volgorde:**
1. Tweaks voor systeem-brede (kleur, density)
2. Comments voor batch-feedback (10 wijzigingen in 1 shot)
3. Draw voor mood-wijzigingen
4. Element voor micro-precisie

> **ACTIE:** Probeer alle 4 de modes op je huidige render. Minstens 1 per mode. Typ `1` als je ze alle 4 gebruikt hebt.

```
┌─────────────────────────────────────────────────┐
│  ACHIEVEMENT UNLOCKED                           │
│  Je beheerst de 4 edit-modes                    │
└─────────────────────────────────────────────────┘
```

> **Voortgang**  `[███░░░░░░] 3/9 · Les 2 afgerond`

---

## Pro tips + veel-gemaakte fouten

### Pro tips
- Antwoord altijd specifiek op de 7 vragen. "Medium" is niks. "Moderate density, 2-3 sections per viewport" is bruikbaar.
- Start wireframe voor multi-page. Layout eerst, styling later.
- Gebruik "use my design.md" zo vaak mogelijk.
- Comments mode voor client-review sessies — batch 10 wijzigingen in één shot.

### Mistakes
- Skip geen vragen. Claude Design raadt — raadt vaak verkeerd.
- Geen "verras me". Geef richting. Dit is engineering, niet art class.
- Niet 7 keer opnieuw prompten. Bouw eens, dan iterate met edit-modes.

---

## AFGEROND

**Wat je nu kan:**
- Wireframe vs high-fi kiezen per situatie
- De 7-vragen loop triggeren met `Ask me any questions before you begin.`
- Varianten-eerst workflow voor 50% quota-besparing
- Alle 4 edit-modes (tweaks, comments, draw, element)

**Gift:** 10 mega prompts prompt-pack — kant-en-klaar te plakken in Claude Design.

**Volgende les:** `/design:03-multi-page` — We bouwen een **complete one-pager voor Orbis.Nft** (NFT collection, dark space thema). Van één sectie naar volledige site.
