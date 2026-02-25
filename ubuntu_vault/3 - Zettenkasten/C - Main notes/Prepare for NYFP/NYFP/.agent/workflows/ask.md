---
description: Lam ro yeu cau truoc khi bat tay vao lam. Dat cau hoi thong minh, goi y cai thien, dam bao hieu dung 100%.
---

# /ask - Socratic Discovery & Requirements Clarification

$ARGUMENTS

---

## PURPOSE

The `/ask` workflow is Phase 0 of the A-PDCA cycle. It ensures the agent
**truly understands** user intent before any planning or execution begins.

**When to use:**
- Before `/create` or `/plan` for any non-trivial task
- When requirements feel ambiguous or incomplete
- When you want proactive suggestions for your project
- When starting a new feature, module, or significant change

---

## PHASE 1: Context Scan
**Agent**: `explorer-agent`
**Mission**: Understand the current state before asking questions.

- **Action**: Quick scan of project structure, tech stack, existing patterns
- **Action**: Check `ERRORS.md` for recurring issues related to the request
- **Action**: Review recent changes (git log) for relevant context
- **Output**: Context Brief (internal, not shown to user)

**Time limit**: 30 seconds. Don't over-analyze — just enough context to ask smart questions.

---

## PHASE 2: Socratic Questioning (CDI Protocol)
**Agent**: `socratic-guide`
**Mission**: Extract true intent through the CDI Protocol.

### Step 1: CONTEXT — Show Understanding First
```markdown
## I understand that...
[1-3 sentences paraphrasing what you think the user wants]
[Components/files that will be affected]
[Any relevant context from codebase scan in Phase 1]

Is this correct?
```

### Step 2: DECISION — Present Concrete Decisions

Identify REAL decision points that change the implementation:
```
1. [Decision Title]
   A) [Option] — [1-line tradeoff]
   B) [Option] — [1-line tradeoff]
   C) [Option] — [1-line tradeoff]  ← Recommended because [reason]

2. [Decision Title]
   A) [Option] — [1-line tradeoff]  ← Recommended because [reason]
   B) [Option] — [1-line tradeoff]
```

**Rules**: Max 4 decisions. Each must change the implementation. Always include recommendation.

### Step 3: IMPACT — Recommend After User Decides

AFTER user responds to decisions, offer tied recommendations:
```
Based on your choices, I also recommend:
1. [Suggestion] — because [tied to decision]. If skipped: [concrete risk]
2. [Suggestion] — because [tied to context]. If skipped: [concrete risk]
```

### Step 3: Wait for User Response
**CRITICAL**: Do NOT proceed to PLAN until user responds.
If user answers partially, acknowledge what's confirmed and re-ask critical gaps.

---

## PHASE 3: Requirements Confirmation
**Agent**: `socratic-guide`
**Mission**: Lock in confirmed requirements before handoff.

### Create Requirements Summary
```markdown
## Yeu cau da xac nhan:

### Must-Have (Bat buoc):
1. [Requirement — confirmed by user]
2. [Requirement — confirmed by user]

### Should-Have (Nen co):
1. [Suggestion accepted by user]

### Nice-to-Have (Co thi tot):
1. [Lower priority item]

### Explicitly Excluded (Khong lam):
1. [What user said is OUT of scope]

### Open Questions (Chua tra loi):
1. [Question deferred — will resolve during implementation]

### Constraints:
- Tech: [stack/framework constraints]
- Time: [deadline if any]
- Scope: [boundary limits]
```

### Confirmation Gate
```
"Day la toan bo yeu cau toi da ghi nhan. Ban xac nhan dung khong?
 Neu dung, toi se chuyen sang PLAN phase voi @project-planner."
```

---

## PHASE 4: Handoff to PLAN
**Agent**: `socratic-guide` -> `project-planner`
**Mission**: Clean transition with complete context.

### Handoff Package
```markdown
## ASK -> PLAN Handoff

### Source: @socratic-guide
### Target: @project-planner
### Date: [auto]

### Confirmed Requirements:
[From Phase 3]

### User Context:
- Scale: [Instant/Creative/SME]
- Product Type: [user_app/dev_tool/ai_agent/digital_asset]
- Priority: [Speed vs Quality]

### Suggestions Accepted:
[List]

### Risk Register:
1. [Risk] — Mitigation: [Plan]
2. [Risk] — Mitigation: [Plan]

### Notes for Planner:
[Any special considerations from the conversation]
```

**After handoff**: Automatically invoke `/plan` with the confirmed requirements.

---

## DECISION TREE: How Deep to Ask?

```
User Request Received
    |
    +-- Is it a quick fix? (typo, import, 1-line change)
    |   +-- YES: Ask 1 confirming question inline. Skip /ask workflow.
    |   +-- NO: Continue below
    |
    +-- Is scope clear? (user gave detailed spec)
    |   +-- YES: LIGHT gate (2-3 questions + 1 suggestion)
    |   +-- NO: Continue below
    |
    +-- Is it a new feature or architecture change?
    |   +-- YES: FULL gate (5-8 questions + 3 suggestions)
    |   +-- NO: STANDARD gate (3-5 questions + 1 suggestion)
    |
    +-- Does user say "just do it" or "skip questions"?
        +-- YES: BYPASS (log bypass, proceed to PLAN)
        +-- NO: Execute selected gate level
```

---

## EXAMPLES

### Example 1: New Feature
```
User: "Them tinh nang dang nhap"

/ask Response:

## Toi hieu rang...
Ban muon them tinh nang authentication cho ung dung.

### Cau hoi can lam ro:

1. **Phuong thuc dang nhap**: Email/Password, OAuth (Google/GitHub), hay ca hai?
   - Goi y: Bat dau voi Email/Password + Google OAuth (covers 90% users)

2. **Bao mat**: Can 2FA (xac thuc 2 yeu to) khong?
   - Goi y: Nen co, it nhat cho admin accounts

3. **Session**: JWT token hay session-based?
   - Goi y: JWT voi refresh token cho SPA/Mobile

4. **Dang ky**: Co cho phep tu dang ky hay chi admin tao account?

### Goi y cai thien:
1. **Rate limiting**: Nen gioi han so lan dang nhap that bai (chong brute force)
   - Rui ro neu bo qua: Account bi hack qua brute force

2. **Password policy**: Nen enforce mat khau manh (min 8 chars, mix case + numbers)
   - Rui ro neu bo qua: Users dung password yeu, de bi tan cong
```

### Example 2: Bug Fix
```
User: "Trang dashboard bi cham"

/ask Response:

## Toi hieu rang...
Trang dashboard dang co van de performance.

### Cau hoi can lam ro:

1. **Muc do cham**: Mat bao lau de load? (2s? 5s? 10s+?)
2. **Khi nao cham**: Luc nao cung cham hay chi khi du lieu nhieu?
3. **Pham vi**: Chi dashboard hay cac trang khac cung bi?

### Goi y cai thien:
1. **Profiling truoc**: De toi chay Lighthouse/DevTools Performance tab truoc khi sua
   - Giup xac dinh chinh xac bottleneck thay vi doan
```

### Example 3: Quick Task (LIGHT gate)
```
User: "Doi mau nut Submit thanh xanh"

/ask Response:

Xac nhan: Nut Submit -> mau xanh (green). Xanh la (#22c55e) hay xanh duong (#3b82f6)?
```

---

## RULES OF ENGAGEMENT

1. **Never skip ASK for complex tasks** — Even if you think you understand
2. **Always suggest at least 1 improvement** — Add value beyond the request
3. **Offer options, not open questions** — Make it easy for users to decide
4. **Respect BYPASS** — If user says "just do it", proceed (but log it)
5. **Time-box yourself** — ASK phase should be 10-15% of total effort, not more
6. **Questions are investments** — Every good question saves hours of rework

---

## METRICS

Track these to measure ASK phase effectiveness:

| Metric | Target | How to Measure |
|--------|--------|---------------|
| Rework after ASK | < 10% | Count mid-task "that's not what I meant" |
| Suggestion acceptance rate | > 50% | Track suggestions user agrees to |
| Questions before PLAN | 3-6 avg | Count per session |
| ASK phase duration | 10-15% of total | Time tracking |
| User satisfaction with understanding | High | Direct feedback |

---

## DASHBOARD INTEGRATION (v5.0)

When the Antigravity Dashboard is running (`antigravity-ide dashboard`), the ASK phase
uses a **file-based protocol** instead of text chat:

### How It Works

1. **Agent writes questions** → `.agent/ask-session.json`:
```json
{
  "taskTitle": "Feature Name",
  "understanding": "I understand you want...",
  "phase": "ask",
  "gateLevel": "full",
  "questions": [
    {
      "id": "q1",
      "category": "decision",
      "label": "Question text?",
      "type": "radio",
      "options": [
        { "value": "a", "label": "Option A" },
        { "value": "b", "label": "Option B", "recommended": true }
      ]
    }
  ],
  "suggestions": [
    { "id": "s1", "text": "Add caching", "reason": "Improves speed", "risk": "Stale data" }
  ]
}
```

2. **Dashboard renders form** → User fills answers visually in browser
3. **Dashboard writes answers** → `.agent/ask-result.json`
4. **Agent reads result** → Continues to PLAN phase

### Detecting Dashboard Mode

Check for `.agent/.dashboard-active` flag or the existence of a running
dashboard server. If dashboard is NOT running, fall back to text-based
questioning in chat.

### Running the Dashboard

```bash
# From project directory
antigravity-ide dashboard

# With custom port
antigravity-ide dashboard --port 4000
```

