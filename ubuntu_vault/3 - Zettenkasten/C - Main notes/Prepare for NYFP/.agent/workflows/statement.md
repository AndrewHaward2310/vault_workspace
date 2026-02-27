---
description: Viết Personal Statement / SOP. Brainstorm → Draft → Polish → Translate.
---

# /statement - Personal Statement Writing Pipeline

$ARGUMENTS

---

## 🟢 PHASE 1: Story Discovery
**Agent**: `career-strategist`
**Mission**: Uncover the candidate's unique narrative.
- **Action**: Ask targeted questions about background, motivations, goals
- **Action**: Identify the "turning point" moment for the story arc
- **Action**: Determine target program and what they value
- **Skill**: `personal-statement-writer` → `story-arc-framework`

## 🟡 PHASE 2: Outline & Strategy
**Agent**: `career-strategist`
**Mission**: Design the narrative structure.
- **Action**: Map the 5-Act story arc (Setup → Rising → Climax → Falling → Resolution)
- **Action**: Select the right template (scholarship PS vs grad school SOP)
- **Skill**: Appropriate template from `personal-statement-writer`
- **Artifact**: Outline with key points for each paragraph

## 🔵 PHASE 3: Drafting
**Agent**: `career-strategist`
**Mission**: Write the full statement.
- **Action**: Write paragraph by paragraph following the outline
- **Action**: Apply authentic voice — not generic or cliché
- **Action**: Check against `common-mistakes-guide`
- **Checkpoint**: Review with user after first draft

## 🔴 PHASE 4: Polish & Finalize
**Agent**: `career-strategist` + `writing-quality-analyzer`
**Mission**: Refine and deliver.
- **Action**: Tone check with `academic-tone-checker` (for SOP) or conversational check (for PS)
- **Action**: Readability scoring — aim for engaging but clear
- **Action**: Bilingual translation if needed
- **Action**: Final word count and limit check
- **Artifact**: Final statement ready for submission

---

## Examples:
- `/statement --for "NYFP Scholarship"`
- `/statement --for "MIT PhD Computer Science" --type sop`
- `/statement --for "Chevening Scholarship" --lang bilingual`
