# Methodology Writing Guide

## How to Write a Clear Methodology Section

### Structure Pattern

1. **Overview**: High-level approach description (1-2 paragraphs)
2. **Problem Formulation**: Mathematical notation, definitions
3. **Architecture/Design**: System components, data flow
4. **Algorithm**: Step-by-step procedure (pseudocode if applicable)
5. **Implementation**: Languages, libraries, hardware specs

### Writing Rules

| Rule                            | Example                                                  |
| ------------------------------- | -------------------------------------------------------- |
| Be specific enough to reproduce | "Learning rate: 0.001, Adam optimizer, batch size: 32"   |
| Use figures for architecture    | "Fig. 1 shows the system architecture..."                |
| Define all variables            | "Let G = (V, E) denote a graph where V is..."            |
| Justify design choices          | "We chose GNN over CNN because spatial relationships..." |
| Reference prior methods         | "Following the approach of Author (Year)..."             |

### Methodology Sentence Patterns
```
"We formulate the problem as [FORMULATION]."
"Our approach consists of three main components: (1)..., (2)..., (3)..."
"Algorithm 1 describes the [PROCESS] procedure."
"We train the model using [LOSS FUNCTION] with [OPTIMIZER]."
"The hyperparameters were selected via [GRID SEARCH / CROSS-VALIDATION]."
```

### Checklist
- [ ] Reproducible: Could another researcher replicate this?
- [ ] Complete: Are all parameters, datasets, and tools mentioned?
- [ ] Referenced: Are adopted methods properly cited?
- [ ] Visual: Is there at least one architecture/flow diagram?
- [ ] Justified: Are design decisions explained?
