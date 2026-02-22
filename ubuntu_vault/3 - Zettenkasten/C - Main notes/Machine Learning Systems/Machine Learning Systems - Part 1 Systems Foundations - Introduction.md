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

# References
