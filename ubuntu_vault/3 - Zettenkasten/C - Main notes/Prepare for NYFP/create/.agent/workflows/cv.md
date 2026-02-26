---
description: Tạo CV / Resume chuyên nghiệp. Thu thập thông tin → Format → Tối ưu ATS.
---

# /cv - CV & Resume Builder Pipeline

$ARGUMENTS

---

## 🟢 PHASE 1: Information Gathering
**Agent**: `career-strategist`
**Mission**: Collect all relevant career information.
- **Action**: Ask for target position/program
- **Action**: Determine CV type (Academic multi-page vs Industry 1-page)
- **Action**: Collect: education, experience, skills, publications, awards
- **Action**: Determine language (English, Vietnamese, or bilingual)

## 🟡 PHASE 2: Strategic Design
**Agent**: `career-strategist`
**Mission**: Design CV strategy for maximum impact.
- **Action**: Analyze target requirements (job posting or program criteria)
- **Action**: Select relevant experiences to highlight
- **Action**: Map keywords from target to candidate's experience
- **Skill**: `cv-resume-builder` → appropriate template

## 🔵 PHASE 3: Build & Format
**Agent**: `career-strategist`
**Mission**: Create the document.
- **Action**: Apply template (academic-cv or industry-resume)
- **Action**: Write impact-driven bullet points using `cv-section-patterns`
- **Action**: Format for bilingual output if requested (`bilingual-cv-guide`)
- **Artifact**: CV/Resume in Markdown format

## 🔴 PHASE 4: Optimize & Deliver
**Agent**: `career-strategist`
**Mission**: Final optimization and quality check.
- **For Industry**: Run ATS optimization check (`ats-optimizer-guide`)
- **For Academic**: Verify completeness (publications, presentations)
- **Action**: Final proofread and consistency check
- **Artifact**: Final document ready for submission

---

## Examples:
- `/cv --target "AI Research Scientist at Google DeepMind"`
- `/cv --type academic --lang bilingual`
- `/cv --target "NYFP Fellowship Application"`
