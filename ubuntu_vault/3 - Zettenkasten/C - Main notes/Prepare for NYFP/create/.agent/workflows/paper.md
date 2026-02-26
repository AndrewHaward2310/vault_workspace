---
description: Viết bài báo khoa học từ A-Z. Outline → Draft → Review → Format.
---

# /paper - Scientific Paper Writing Pipeline

$ARGUMENTS

---

## 🟢 PHASE 1: Paper Planning
**Agent**: `academic-writer`
**Mission**: Define the paper scope and structure.
- **Action**: Determine paper type (conference, journal, thesis chapter)
- **Action**: Select citation format (IEEE, APA, Chicago, Harvard)
- **Action**: Create detailed outline with section allocation
- **Skill**: `academic-paper-writer` → `paper-structure-guide`
- **Artifact**: Create outline in `docs/paper-outline.md`

## 🟡 PHASE 2: Literature & Citations
**Agent**: `academic-writer`
**Mission**: Build the citation foundation.
- **Action**: Identify key references for each section
- **Action**: Format citations using `citation-manager`
- **Skill**: `citation-manager` → `bibtex-handler`
- **Artifact**: Create `references.bib` or reference list

## 🔵 PHASE 3: Drafting
**Agent**: `academic-writer`
**Mission**: Write the full paper section by section.
- **Order**: Abstract → Introduction → Related Work → Method → Results → Discussion → Conclusion
- **Skill**: `academic-paper-writer` → format-specific template
- **Checkpoint**: Review each section before proceeding

## 🔴 PHASE 4: Review & Polish
**Agent**: `academic-writer` + `writing-quality-analyzer`
**Mission**: Quality assurance and submission readiness.
- **Action**: Run `peer-review-checklist`
- **Action**: Check academic tone with `academic-tone-checker`
- **Action**: Verify citation completeness with `reference-best-practices`
- **Artifact**: Final paper in Markdown (convertible to DOCX/LaTeX)

---

## Examples:
- `/paper "GNN-IL-PPO for Multi-Agent Task Assignment" --format ieee`
- `/paper "Survey of Reinforcement Learning in Warehousing" --format apa`
- `/paper "Chapter 3: Methodology" --format harvard --type thesis`
