"""Original mixed practice paper; first option is correct."""
RAW = '''
A planned walking session intended to improve fitness is|exercise|unplanned incidental movement only|competitive sport in every case|no physical activity|Planned activity for fitness is exercise.
A pupil walks to school without following an exercise schedule. The walk can still be|physical activity|necessarily competitive sport|never physical activity unless supervised|necessarily planned exercise|Walking uses skeletal muscles and energy.
Explaining a warm-up principle is primarily a|cognitive outcome|a motor skill outcome|a social cooperation outcome|an emotional confidence outcome|Explaining a principle demonstrates understanding.
Respecting teammates during a game is primarily a|social outcome|a motor skill outcome|a physiological measure|an anatomical identification|Respectful cooperation is a social outcome.
A teacher adjusts equipment after discussing a learner's needs. This can support|inclusion|a guarantee of no injury|a clinical diagnosis|the assumption of identical needs|Appropriate adaptation can support participation.
Which organ is protected by the bones of the skull?|brain|heart|lungs|spinal cord along its full length|The skull protects the brain.
The femur is the bone of the|thigh|upper arm|forearm|lower leg|The femur is the thigh bone.
A player points to the bone between shoulder and elbow. The humerus is in the|upper arm|lower leg|thigh|forearm|The humerus is the upper-arm bone.
A ligament connects|bone to bone|muscle to bone|muscle to muscle in every joint|nerve to nerve|Ligaments connect bones and help stabilise joints.
When a skeletal muscle pulls on a bone, its tendon connects|muscle to bone|bone to bone|cartilage to cartilage in every joint|nerve to nerve|Tendons connect muscle to bone.
A learner bends the elbow to bring a hand closer to the shoulder. This action is|flexion|extension|abduction|rotation|Bending the elbow is flexion.
Moving a limb away from the midline is|abduction|adduction|flexion|extension|Abduction is movement away from the midline.
The shoulder is commonly classified as a|ball-and-socket joint|fixed skull suture|hinge joint|pivot joint|The shoulder is a ball-and-socket joint.
The muscular wall of the heart consists of|cardiac muscle|skeletal muscle|smooth muscle|voluntary skeletal muscle alone|Cardiac muscle forms the heart wall.
The triceps contributes to|elbow extension|elbow flexion|knee flexion|ankle dorsiflexion|The triceps contributes to elbow extension.
The brain and spinal cord form the|central nervous system|peripheral nervous system alone|cardiovascular system|appendicular skeleton|The brain and spinal cord form the central nervous system.
A muscle producing force without appreciable change in its overall length is performing|an isometric action|a concentric action in every case|an eccentric action in every case|an action with no force produced|An isometric action produces force without appreciable overall length change.
Which direction defines an artery in relation to the heart?|away from the heart|towards the heart|towards the heart only when oxygen-rich|away from the lungs only|Arteries carry blood away from the heart.
Which direction defines a vein in relation to the heart?|towards the heart|away from the heart|away from the heart only when oxygen-rich|towards the lungs only|Veins carry blood towards the heart.
Tiny lung air sacs involved in gas exchange are|alveoli|bronchi|trachea|pulmonary arteries|Alveoli are tiny air sacs involved in gas exchange.
Twenty pulse beats in 15 seconds correspond to an estimated|80 beats per minute|20 beats per minute|60 beats per minute|120 beats per minute|Twenty times four gives 80 beats per minute.
A pulse estimate alone is|not a complete medical diagnosis|a diagnosis in every case|a universal exercise prescription|a guarantee of overall health|Pulse arithmetic alone does not establish a diagnosis.
Range of movement at a joint is most directly associated with|flexibility|muscular strength|reaction time|body composition|Flexibility concerns joint range of movement.
The ability to sustain or repeat muscular effort is|muscular endurance|muscular strength in a single maximal effort|joint flexibility|reaction time|Muscular endurance concerns sustained or repeated effort.
In FITT, how often activity occurs is|frequency|intensity|type|time|Frequency is how often activity occurs.
Training that relates to the intended goal illustrates|specificity|reversibility|progression|recovery|Specificity relates training to the intended goal.
A sprint race is generally a|track event|field jumping event|field throwing event|combined field event|A sprint is a track running event.
An athlete leaps into a prepared landing area for measured distance. Long jump is a|field event|track running event|track relay event|field throwing event|Long jump is a field jumping event.
A relay team passes a|baton|javelin|shot|discus|Relay runners pass a baton under applicable rules.
A high jumper attempts to clear|a bar at a height|a take-off board for distance|a baton exchange zone|a throwing sector|High jump involves clearance of a bar.
Before a throwing attempt the sector should be|clear under the official's instructions|occupied by unrelated players|used for another game during the attempt|unchecked until after the throw|A clear sector and official instructions support safety.
A shuttlecock is commonly used in|badminton|table tennis|basketball|volleyball|Badminton uses a shuttlecock.
Sending a ball to a teammate is a|pass|receiving action|dribble|shot at goal|A pass transfers a ball to another player.
A competition format that generally eliminates a participant after a loss is|knockout|round robin|league with every participant playing the others|training session|A knockout format generally eliminates participants after a loss.
A player who respects an opponent and follows the rules demonstrates|fair play|cheating|gamesmanship that ignores the rules|deliberate obstruction of officials|Fair play includes respect for rules and people.
A student has time free from required work. This time is commonly called|leisure|exercise|competition|fitness|Leisure refers to time free from required obligations.
Choosing a novel for enjoyment during free time illustrates|recreation|compulsory employment|clinical treatment|competitive sport in every case|Recreation can include quiet activities such as reading.
A community dance may express a tradition and bring people together. Dance can have|cultural and social purposes|only one universal meaning|no social significance|no cultural context|Dance has varied cultural, social and other purposes.
Adapted activity should consider|the participant, task, environment and safety|only a diagnostic label|only the score|a fixed adjustment without considering the environment|An adaptation should suit the participant and situation.
If a participant reports concerning symptoms during activity, the appropriate general response is to|stop and obtain appropriate help|insist on continuing|ignore the symptoms|make a diagnosis from the score|Concerning symptoms should be taken seriously.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
