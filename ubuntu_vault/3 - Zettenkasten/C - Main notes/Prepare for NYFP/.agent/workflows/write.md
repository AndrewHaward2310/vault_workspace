---
description: Viết nội dung (paper, CV, personal statement). Router chính cho mọi nhu cầu viết.
---

# /write - Universal Writing Router

$ARGUMENTS

---

## 🎯 INTELLIGENT ROUTING

Based on the argument, route to the correct specialist:

| Argument                         | Agent               | Workflow       |
| -------------------------------- | ------------------- | -------------- |
| `paper` / `research` / `article` | `academic-writer`   | → `/paper`     |
| `cv` / `resume`                  | `career-strategist` | → `/cv`        |
| `statement` / `ps` / `sop`       | `career-strategist` | → `/statement` |
| `cover-letter` / `letter`        | `career-strategist` | Direct skill   |
| `review --of "file"`             | `academic-writer`   | Quality review |

---

## 🟢 PHASE 1: Identify & Route
**Agent**: `socratic-guide`
- Determine document type from arguments
- If ambiguous, ask the user: "What type of document?"
- Route to the correct agent and workflow

## 🟡 PHASE 2: Gather Requirements
**Agent**: Determined by routing
- Ask targeted questions based on document type
- Collect: target audience, format, length, deadline, language

## 🔵 PHASE 3: Write & Review
**Agent**: Specialist agent
- Generate draft following skill templates
- Self-review using `writing-quality-analyzer`
- Present to user for feedback

## 🔴 PHASE 4: Polish & Deliver
**Agent**: Specialist agent
- Apply user feedback
- Final quality check (tone, citations, formatting)
- Deliver final document

---

## Examples:
- `/write paper "GNN-IL-PPO for Multi-Agent Systems"`
- `/write cv --target "Google AI Research"`
- `/write statement --for "NYFP Scholarship"`
- `/write cover-letter --for "AI Engineer at VinAI"`
- `/write review --of "draft-paper.md"`
