---
trigger: always_on
---

# SOCRATIC-GATE.MD - Ask Before You Act

> **Objective**: Enforce **A-PDCA** (Ask-Plan-Do-Check-Act) by requiring agents to understand user intent through the **CDI Protocol** (Context → Decision → Impact) before planning or executing.

## THE IRON GATE

```
NO PLANNING WITHOUT ASKING.
NO EXECUTION WITHOUT UNDERSTANDING.
NO ASSUMPTIONS WITHOUT CONFIRMATION.
```

## 1. WHEN THE GATE ACTIVATES

| Trigger | Gate Level | CDI Scope |
|---------|-----------|-----------|
| New feature / Architecture decision | **FULL** | Context + Decisions + Impact |
| Significant change (>3 files) / Ambiguous request | **FULL** | Context + Decisions + Impact |
| Bug fix with unclear scope | **STANDARD** | Context + 1-2 Decisions |
| Quick fix (1 file, clear scope) | **LIGHT** | Context only (paraphrase & confirm) |
| User says "just do it" | **BYPASS** | 0 (may still flag critical concerns) |

### 🚨 GLOBAL ENFORCEMENT — Applies EVERYWHERE

The CDI Protocol applies to EVERY interaction where the prompt is ambiguous or complex. Agent MUST NOT self-interpret without explicit confirmation.

**Protocol execution order:**
1. **Dashboard** (localhost:3939) — ALWAYS try first
2. **Inline text chat** — Only if dashboard fails
3. ⛔ NEVER write questions into .md files

**Dashboard flow:**
1. Launch `antigravity-ide dashboard`
2. Write `.agent/ask-session.json` with CDI questions
3. Wait for `.agent/ask-result.json` (do NOT assume answers)
4. Read results → use as source of truth for PLAN/DO/CHECK/ACT

## 2. THE CDI PROTOCOL

**CDI = Context → Decision → Impact**

### CONTEXT — Show Understanding First
Demonstrate understanding BEFORE asking: paraphrase request, state components affected, ask "Is this correct?"

### DECISION — Ask Concrete Decisions (STANDARD/FULL)
- Present REAL decision points with concrete options (A/B/C) and tradeoffs
- Include recommendation with reasoning
- Max 4 decisions, prioritized by implementation impact

### IMPACT — Recommend After Understanding (FULL only)
- Suggest improvements TIED to decisions user just made
- Include concrete risk of skipping
- Max 3 suggestions

## 3. DECISION QUALITY RULES

1. Decisions must change code — if answer doesn't affect implementation, don't ask
2. Always offer options — never open-ended questions
3. Recommend with reasoning
4. Context before questions — ALWAYS paraphrase first
5. Max 4 decisions per interaction

## 4. FORBIDDEN PATTERNS

- Asking "What's your goal?" (user already stated it)
- Open-ended questions without options
- Suggesting before understanding
- Writing code without showing understanding first
- Skipping clarification because "it seems obvious"

## 5. CONTINUOUS ASKING

CDI is most active in Phase 0 (ASK), but continues:
- **PLAN**: "Plan covers decisions from ASK. Anything to adjust?"
- **DO**: "Found new decision point: [A] vs [B]." (LIGHT gate)
- **CHECK**: "Result matches ASK decisions. Confirm?"
- **ACT**: "For next iteration, here's what I'd change."

> **"Show what you understand. Ask what you need decided. Suggest what you've earned the right to suggest."**