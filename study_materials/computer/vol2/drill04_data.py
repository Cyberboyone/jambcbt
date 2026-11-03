"""Forty original AI questions; the first choice is correct."""
RAW = '''
Artificial intelligence is a broad field concerned with systems that can perform tasks associated with|pattern recognition, reasoning or language processing|only supplying electricity|only moving paper|only physical cables|AI is a broad field encompassing tasks such as recognition and language processing.
Machine learning is|one family of approaches within AI|a synonym for every possible AI technique|a physical printer|always a human brain|Machine learning is one approach within the wider field of AI.
A rule-based system can use|explicitly written rules|only magnetic tape|only a monitor stand|no instructions|Rule-based systems can apply rules specified by people.
A machine-learning model is fitted using|training data|a paper tray only|a power plug only|a screen cover|Training data are used to fit a model.
In supervised learning, examples commonly include|inputs and desired labels|only a device's colour|no information about outcomes|physical cable lengths only|Supervised examples pair inputs with desired labels or targets.
A separate test set is used to|evaluate a trained model on suitable cases not used to fit it|guarantee perfect future performance|replace the task definition|ensure every group is represented automatically|A suitable separate test set helps assess performance on new cases.
A model can perform well on training examples but poorly on new cases. This illustrates|the need to evaluate generalisation|proof that testing is unnecessary|guaranteed fairness|a printer jam|Performance on training data alone may not show how the model handles new data.
A model's confidence in an answer|does not guarantee the answer is correct|guarantees truth|proves the system is conscious|eliminates the need for checking|A confident or plausible output can still be wrong.
Which is a common AI application?|speech recognition|a chair leg|a power socket|a paper clip|Speech recognition is an example of an AI application.
A system that classifies images assigns them|categories according to its model or rules|a physical keyboard|electrical power|a paper tray|An image classifier assigns a category according to its design.
A recommendation system suggests an item. The suggestion|is not proof that the item is suitable|guarantees suitability for every user|is automatically a legal requirement|is a physical actuator|Recommendations can be useful but must be evaluated in context.
Data that omit a relevant user group can contribute to|biased or unreliable performance|guaranteed fairness|unlimited accuracy|a larger screen|Unrepresentative data can contribute to unequal or unreliable results.
A test score should be interpreted alongside|the data and evaluation procedure|only the colour of the computer|only the model's name|a guarantee that every future input is identical|A score describes a particular evaluation and depends on its data and method.
A classifier correctly labels 16 of 20 examples. Its accuracy on that set is|80%|16%|60%|90%|Sixteen divided by twenty is 0.8, or 80%.
A classifier correctly labels 18 of 20 examples. Its accuracy on that set is|90%|18%|80%|98%|Eighteen divided by twenty is 0.9, or 90%.
A classifier correctly labels 8 of 10 examples. Its accuracy on that set is|80%|8%|10%|100%|Eight divided by ten is 0.8, or 80%.
A classifier correctly labels 9 of 12 examples. Its accuracy on that set is|75%|9%|90%|12%|Nine divided by twelve is 0.75, or 75%.
A classifier correctly labels 15 of 20 examples. Its accuracy on that set is|75%|15%|80%|95%|Fifteen divided by twenty is 0.75, or 75%.
If 12 of 20 classifications are correct, the test-set accuracy is|60%|12%|80%|90%|Twelve divided by twenty is 0.6, or 60%.
If 5 of 10 classifications are correct, the test-set accuracy is|50%|5%|10%|100%|Five divided by ten is 0.5, or 50%.
If 19 of 20 classifications are correct, the test-set accuracy is|95%|19%|90%|99%|Nineteen divided by twenty is 0.95, or 95%.
If 7 of 10 classifications are correct, the test-set accuracy is|70%|7%|10%|90%|Seven divided by ten is 0.7, or 70%.
If 3 of 4 classifications are correct, the test-set accuracy is|75%|3%|25%|100%|Three divided by four is 0.75, or 75%.
A single overall accuracy percentage may fail to show|which types of mistakes occurred|the number of digits in its own display only|that the system was evaluated|whether arithmetic exists|Overall accuracy alone does not describe the distribution or consequences of errors.
In a consequential AI application, human oversight should|include meaningful review and the ability to question outputs|mean accepting every output blindly|remove the need to define responsibilities|guarantee no errors automatically|Review must be meaningful; blind acceptance does not provide effective oversight.
Training examples containing systematic errors can|contribute to unreliable model behaviour|guarantee a perfect model|turn the model into hardware|eliminate privacy concerns|Errors in training data can contribute to unreliable results.
A test set representing only one group may|miss poor performance for other intended users|prove equal performance for all groups|guarantee all future predictions|replace the need to examine the task|An unrepresentative evaluation may miss important differences in performance.
An AI language tool produces a plausible claim. For an important decision, a user should|check it against reliable sources|assume confidence proves truth|share private credentials with it|treat it as an official document automatically|Plausible language output may be wrong and should be checked.
A classifier's false positive and false negative can have|different consequences depending on the task|identical consequences in every context|no relevance to evaluation|the same meaning as a keyboard|Different error types may have different real-world effects.
A supervised model trained to classify pictures may use|pictures paired with category labels|only an empty folder|a power cable as the only input|a blank page as the entire dataset|Supervised learning commonly uses inputs paired with desired labels.
Which statement about AI and consciousness is careful?|the AI label alone does not establish consciousness|every AI system is conscious|no AI output can ever be wrong|a model's name proves understanding|The term AI alone does not prove consciousness or human-like understanding.
A data privacy safeguard should be considered|when collecting and using personal information|only after public disclosure|only when no data exist|never for AI systems|Privacy and data protection should be considered throughout data use.
Monitoring an AI application after deployment is useful because|conditions and performance can change|deployment makes all errors impossible|the model can no longer receive inputs|monitoring replaces every test|Performance and conditions can change after deployment.
Which is a rule-based example?|a system applying explicitly written if-then rules|a paper sheet without instructions|a disconnected power cord|a screen stand|A rule-based system can apply explicitly written rules.
Which statement about machine learning is accurate?|it fits models using data under a training procedure|it guarantees unbiased decisions|it eliminates the need for evaluation|it must always control a robot|Machine learning uses data and training procedures; results need evaluation.
A model tested on cases not used for training is being evaluated for|performance on suitable new cases|the colour of its cable|whether all computers have keyboards|the weight of a printer|Separate evaluation provides evidence about performance on cases not used in fitting.
Which is an example of a task requiring extra caution?|using a model output in a consequential decision|changing a desktop wallpaper only|moving an empty chair|naming an unused folder|Consequential decisions can require evaluation, oversight and safeguards.
A high score on one test set|does not guarantee the same performance in every context|proves universal accuracy|proves every subgroup was included|eliminates the need for monitoring|A single score concerns a particular evaluation and may not generalise.
A useful evaluation considers|the intended use, data quality and types of errors|only the system's name|only whether a chart is colourful|only the cost of a keyboard|Evaluation should address task suitability, data and relevant errors.
A trained model is best distinguished from the training data because|the model is the fitted system, while the data are examples used to fit it|both terms necessarily name the same physical cable|training data are always output devices|a model cannot process inputs|Training uses examples to fit a model; the examples and resulting model are distinct.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
