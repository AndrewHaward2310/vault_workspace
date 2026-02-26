---
description: Bí ý tưởng? Dùng cái này để AI gợi ý theo chuẩn Senior.
---

# /brainstorm - Structured Strategic Exploration

$ARGUMENTS

---

## 🔷 PHASE 0: Socratic Clarification — Launch Dashboard & Apply CDI
**Agent**: `socratic-guide`
**Mission**: Clarify the problem BEFORE generating ideas using the Antigravity Dashboard.

### Step 0.1: Launch the Dashboard
```bash
# Run this command to start the Dashboard server
antigravity-ide dashboard
```
The dashboard will open at `http://localhost:3939` in the user's browser.

### Step 0.2: Write ASK Session File
Create `.agent/ask-session.json` with CDI questions for the user to answer visually:
```json
{
  "taskTitle": "Brainstorm: [topic from $ARGUMENTS]",
  "understanding": "I understand we're brainstorming [X] because [Y]. Is this correct?",
  "phase": "ask",
  "gateLevel": "light",
  "questions": [
    {
      "id": "context",
      "category": "context",
      "label": "Is my understanding above correct? Any additional context:",
      "type": "text"
    },
    {
      "id": "constraint",
      "category": "decision",
      "label": "What constraints should guide the brainstorm?",
      "type": "checkbox",
      "options": [
        { "value": "tech", "label": "Must fit current tech stack" },
        { "value": "timeline", "label": "Must ship within 2 weeks" },
        { "value": "team", "label": "Solo developer (no team help)" },
        { "value": "budget", "label": "No additional budget" }
      ]
    },
    {
      "id": "tried",
      "category": "decision",
      "label": "What has already been tried or considered?",
      "type": "text"
    }
  ]
}
```

### Step 0.3: Wait for User Response
- Dashboard renders the form → User fills answers in browser
- Dashboard writes answers → `.agent/ask-result.json`
- **Do NOT proceed** until `ask-result.json` exists

### Step 0.4: Read Results & Create Brainstorm Brief
Read `.agent/ask-result.json` and summarize as **Brainstorm Brief**:
```
📋 BRAINSTORM BRIEF (Confirmed by user via Dashboard)
- Understanding: [confirmed or corrected by user]
- Constraints: [from user selections]
- Already tried: [from user answer]
```
- **Gate Rule**: Do NOT proceed to Phase 1 until brief is created from real user answers.

---

> 📌 **All phases below MUST reference the Brainstorm Brief from Phase 0.**
> Every option, analysis, and recommendation must be evaluated against
> the user's confirmed goal and constraints — not agent assumptions.

---

## 🟢 PHASE 1: Domain Discovery
**Agent**: `explorer-agent`
**Mission**: Understand the boundaries of the problem.
**Input**: Brainstorm Brief from Phase 0.
- **Action**: Scan relevant files for context.
- **Action**: Cross-check codebase against the **confirmed constraints**.
- **DNA Link**: Map the request to the correct scale in `GEMINI.md`.

## 🟡 PHASE 2: Multi-Option Generation
**Agent**: `project-planner` or specific specialist
**Mission**: Divergent thinking — guided by the **confirmed goal**.
- **Action**: Provide at least 3 distinct approaches:
  - **Option A**: Conservative/Safe — fits within confirmed constraints.
  - **Option B**: Modern/Aggressive — pushes beyond constraints with justification.
  - **Option C**: Creative/Out-of-the-box — unexpected angle on the confirmed goal.
- **Constraint Check**: Each option must state how it addresses the Brainstorm Brief.
- **Artifact**: Create a comparison table with Pros, Cons, and Effort.

## 🔵 PHASE 3: Competitive Analysis & Recommendation
**Agent**: `product-manager`
**Mission**: Convergent thinking.
- **Action**: Analyze tradeoffs against the **confirmed goal and constraints** from Phase 0.
- **Action**: State a professional recommendation with clear rationale.
- **Validation**: "Does this recommendation solve what the user CONFIRMED they need?"

## 🔴 PHASE 4: Strategic Handoff
**Agent**: `project-planner`
**Mission**: Prepare for action.
- **Action**: Ask the user which path to take.
- **Transition**: Ready to trigger `/plan` based on selection.
- **Carry Forward**: Pass the Brainstorm Brief + chosen option into `/plan`.

---

## Brainstorming Rules:
- **No Code**: Focus on architecture and logic.
- **Honest Tradeoffs**: Don't hide complexity.
- **User-Centric**: Every option must trace back to the user's **confirmed answers**.
- **No Assumptions**: If unsure, refer back to Brainstorm Brief — don't guess.

---

## Examples:
- `/brainstorm state management strategy`
- `/brainstorm database schema for social media`
- `/brainstorm UI design system for mobile`

