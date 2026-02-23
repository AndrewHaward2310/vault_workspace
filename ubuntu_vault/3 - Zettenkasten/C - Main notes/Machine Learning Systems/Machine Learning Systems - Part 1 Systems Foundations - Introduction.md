___
📆 2026-02-13 22:30

🔗 Permalink: [[Machine Learning Systems]] [[Harvard University]]
___

# Part 1 Systems Foundations - Introduction

## Purpose:
Why must we master the engineering principles that govern systems capable of learning, adapting and operating at massive scale?
- Machine learning allows systems to behave based on data rather than on explicit instructions => traditional software engineering principles cannot address systems that learn and adapt based on experience 
- ML systems engineering determines our ability to solve complex problems that exceed human cognitive capacity 
### Learning Objectives:
- Define machine learning systems as integrated computing systems comprising data, algorithms, and infrastructure
- Distinguish ML systems engineering from traditional software engineering through failure pattern analysis
- Analyze interdependencies between data, algorithms, and computing infrastructure using the AI Triangle framework
- Trace the historical evolution of AI paradigms from symbolic systems through statistical learning to deep learning 
- Evaluate the implications of Sutton's "Bitter Lesson" for modern ML systems engineering priorities 
- Compare silent performance degradation in ML systems with traditional software failure modern
- Contrast ML system lifecycle phases with traditional software development 
- Classify real-world challenge in ML systems across data, model, system, and ethical categories 
- Apply the five-pillar framework to evaluate ML system architectures
### Self-check: Question 1
1. What is distinguishes machine learning systems from traditional deterministic software architectures?
	a. Machine learning systems operate based on explicitly programmed instructions
	b. Traditional software systems can adapt autonomously to new data
	==**c. Machine learning systems rely on statistical patterns extracted from data**==
	d. Traditional software systems require no maintenance  
	_Answer_: C - This is correct because ML systems are probabilistic and their behaviors emerge from data, unlike deterministic systems which are based on fixed instructions. 
2. Explain the significance of the "bitter lesson" in AI research as mentioned in the Section.
	- Each transition required new engineering solutions
	- Systems engineering as central to AI advancement 
	_Answer_: The ‘bitter lesson’ in AI research refers to the realization that domain-general computational methods, such as those used in machine learning, ultimately outperform hand-crafted knowledge representations. For example, deep learning has surpassed symbolic AI in many tasks. This is important because it underscores the shift towards systems engineering as central to AI advancement.
3. Which of the following challenges is NOT typically associated with machine learning systems engineering?
    **==a.  Eliminating the need for computational infrastructure==**
    b. Achieving scalability for large datasets
    c. Maintaining robustness with changing data distributions
    d. Ensuring reliability in learned behaviors
    _Answer_: The correct answer is A. Eliminating the need for computational infrastructure. This is incorrect because ML systems require substantial computational resources to process data and train models, unlike traditional systems where infrastructure might be less demanding.
4. How does the AI Triangle framework help in understanding machine  learning systems?
	- Models ML systems as three interdependent system capabilities
	_Answer_: The AI Triangle framework helps understand machine learning systems by illustrating the interdependencies among data, algorithms, and computational infrastructure. For example, changes in data quality can affect algorithm performance, which in turn impacts infrastructure requirements. This is important because it guides the design and optimization of ML systems.
## From Artificial Intelligence Vision to Machine Learning Practice
	How do we actually create these intelligent capabilities? 
Understanding the relationship between AI and ML provides the key to answering this question and is central to everything that follows in this book
- AI is the vision of intelligent machines that can learn, reason, adapt, and can perform tasks requiring human-like intelligence 
- Machine Learning (ML) represents the methodological approach and practical discipline for creating systems that demonstrate intelligent behavior. Unlike traditional deterministic software architectures, ML systems are probabilistic architectures that learn from data through mathematical processes, transforming  AI's theoretical insights into functioning systems
- Consider the evolution of chess-playing systems as an example of this shift. The AI goal of creating a system that can play chess like a human remains constant, but the approaches differ between symbolic AI and ML approaches:
	- Symbolic AI approach (Pre-ML	): involves programming the computer with all chess rules and hand-crafting strategies like "control the center" and "protect the king". This requires expert programmers to explicitly encode thousands of chess principles, creating brittle systems that struggle with novel positions. 
	- ML approach: involves having the computer analyze millions of chess game to learn winning strategies automatically from data. Rather than programming specific moves, the system discovers patterns that lead to victory through statistical analysis of game outcomes.
- This transformation shows why ML has become the dominant approach:
      - In rule-based systems, humans translate domain expertise directly into code 
      - In ML systems, humans curate training data, design learning algorithms, and define success metrics, allowing systems to extract its own operational logic from example. 
      - Data-driven systems can adapt to situations that programmers never anticipated, while rule-based systems remain constrained by their original programming
- The distinction between AI as research vision and ML as engineering methodology carries significant implications for system design. Rule-based AI systems scaled with programmer effort, requiring manual encoding of each new capability. Data-driven ML systems scale through computational and data infrastructure, achieving improved performance by expanding training datasets and computational resources rather than through additional programming effort. This trasformation elevated systems engineering to a central role: advancement now depends on building infrastructure capable of collecting massive datasets, training models with billions of parameters, and serving predictions at scale. Machine learning emerged as a practical approach to AI through this paradigm shift[^1], transforming theoretical principles about intelligence into functioning systems that form the algorithmic foundation of today’s intelligent capabilities.
> [!NOTE] **Definition**: 
> Artificial Intelligence (AI) is the field of computer science focused on creating systems that perform tasks requiring human-like intelligence, including learning, reasoning, and adaptation.
Machine Learning (ML) is the approach to AI that enables systems to automatically learn patterns and make decisions from data rather than following explicit programmed rules.

  [^1]:Paradigm Shift: A term coined by philosopher Thomas Kuhn in 1962 (Kvasz 2014) to describe major changes in scientific approach. In AI, the key paradigm shift was moving from symbolic reasoning (encoding human knowledge as rules) to statistical learning (discovering patterns from data). This transformation explains why ML systems engineering emerged as a discipline distinct from traditional software engineering.
  Kvasz, Ladislav. 2014. “Kuhn’s Structure of Scientific Revolutions Between Sociology and Epistemology.” Studies in History and Philosophy of Science Part A 46 (June): 78–84. https://doi.org/10.1016/j.shpsa.2014.02.006. 

# References
