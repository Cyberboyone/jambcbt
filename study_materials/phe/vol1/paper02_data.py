"""Second original mixed practice paper; first option is correct."""
RAW = '''
Physical education is an educational process that uses|movement and physical activities|only a final score without teaching|medical treatment without education|only written rules without physical activity|Physical education uses movement to support learning and participation.
Exercise differs from physical activity generally because it is commonly|planned and structured for fitness|always accidental rather than planned|never a form of physical activity|necessarily an elite competition|Exercise is planned and structured physical activity for a fitness purpose.
A learner improves a passing skill. The most direct outcome is|motor learning|only a cognitive explanation|only a social cooperation outcome|only an emotional outcome|Improving a passing skill is a motor learning outcome.
Which factor can affect access to activity?|transport and accessible facilities|motivation alone regardless of facilities|skill alone regardless of transport|the activity name without considering access|Resources and facilities can affect participation.
Which skeleton division includes the vertebral column?|axial|appendicular|skeletal muscles only|limb girdles only|The vertebral column belongs to the axial skeleton.
The limbs and their girdles belong to the|appendicular skeleton|axial skeleton|vertebral column alone|skull and rib cage alone|The appendicular skeleton includes limbs and their girdles.
Which body region contains both the radius and the ulna?|forearm|thigh|lower leg|upper arm|The radius and ulna are forearm bones.
The tibia is found in the|lower leg|upper arm|forearm|thigh|The tibia is a lower-leg bone.
A hinge joint commonly permits|flexion and extension|rotation alone around a longitudinal axis|no movement at all|movement in all directions equally|Hinge joints primarily allow bending and straightening.
Moving a limb towards the midline is|adduction|abduction|flexion|extension|Adduction moves towards the midline.
A tendon transmits force between|muscle and bone|bone and bone|cartilage and cartilage alone|nerve and nerve|A tendon connects muscle to bone and transmits force.
Skeletal muscle generally moves a bone by|pulling through a tendon|pushing the bone directly in all directions|moving the bone without any attachment|changing into ligament to move the bone|Skeletal muscle pulls on bone through a tendon.
During a simple elbow bend, the biceps brachii contributes to|elbow flexion|elbow extension|knee extension|ankle plantar flexion|The biceps contributes to elbow flexion.
A rapid response involving a neural pathway can be a|reflex|a consciously planned action in every case|a muscle’s anatomical attachment|a competition’s starting procedure|A reflex is a rapid response involving a neural pathway.
A receptor in a simple reflex model|detects a stimulus|carries the final motor response to the muscle|is always the muscle producing the response|is always the spinal cord|A receptor detects a stimulus.
Pulmonary circulation connects the|heart and lungs|heart and body tissues excluding the lungs|lungs and outside air only|left ventricle and skeletal muscles only|Pulmonary circulation carries blood between heart and lungs.
Capillaries are small|blood vessels involved in exchange|lung air sacs|heart chambers|bronchi|Capillaries are small vessels where exchange with tissues occurs.
When air enters during ordinary inhalation, the diaphragm generally|contracts and moves downward|relaxes and moves upward|contracts and moves upward|relaxes and moves downward|The diaphragm contracts and generally descends during inhalation.
Fifteen pulse beats in 15 seconds give an estimated|60 beats per minute|15 beats per minute|30 beats per minute|90 beats per minute|Fifteen times four gives 60 beats per minute.
A pulmonary artery is classified by carrying blood|away from the heart|towards the heart|always rich in oxygen|away from the lungs only|Arteries carry blood away from the heart.
The ability to exert muscular force is|strength|muscular endurance|flexibility|reaction time|Strength concerns force production.
Changing direction effectively is commonly called|agility|balance|body composition|flexibility|Agility involves effective changes of direction.
In FITT, the kind of activity is|type|time|frequency|intensity|Type identifies the kind of activity.
Gradually changing activity demands appropriately is|progression|reversibility|specificity|an unchanged training load|Progression changes demands appropriately over time.
Loss of some adaptations after stopping training is|reversibility|progression|specificity|overload|Some adaptations diminish when training is reduced or stopped.
An athletics event measured by clearance over a bar is|high jump|long jump|shot put|discus|High jump involves clearing a bar.
A throwing implement should be used only when|the sector is clear and instructions are followed|people occupy the landing sector|the sector is unchecked until after the throw|another game continues in the sector|A clear sector and official instructions support safety.
Relay exchanges must follow|the relevant event rules and designated area|a spectator’s preference instead of event rules|a different sport’s rules automatically|any position chosen by the runners without regard to the zone|The competition rules govern the relay exchange.
A game commonly played using a paddle and lightweight ball on a table is|table tennis|badminton|basketball|volleyball|Table tennis uses paddles and a lightweight ball.
Controlling an incoming ball is|receiving|passing|shooting|dribbling|Receiving involves controlling an incoming ball.
A series of scheduled fixtures is commonly associated with a|league|single-elimination knockout|a single race with no fixtures|an unscheduled practice session|A league commonly uses scheduled fixtures.
Respecting opponents and rules is part of|fair play|deliberately altering a score|harming an opponent to win|disregarding the relevant rules|Fair play involves respect and adherence to rules.
Leisure generally means|time free from obligations|only compulsory work|only a chosen activity|only organised competition|Leisure is time free from required obligations.
Friends choose a board game in their free time for enjoyment. This is|recreation|compulsory work|a mandatory examination|physical exercise in every case|Recreation can include quiet chosen activities.
A dance can have|cultural and social meanings|only one identical meaning everywhere|no cultural significance|no social context|Dance styles and purposes vary by context.
Changing equipment to support a learner can be|an adaptation|a guarantee of injury-free activity|automatic exclusion|a clinical diagnosis|A suitable equipment change can support participation.
Two participants with the same disability label|may have different abilities and preferences|must have identical needs|must both be excluded|cannot participate in any activity|A label alone does not establish individual abilities or preferences.
When preparing a school activity, the organiser should consider|the person, environment and supervision|only the match score|only equipment colour|only the venue name|Planning involves the people, activity, setting and safety.
Persistent or worsening pain should|be assessed by an appropriately qualified professional|always be ignored|be diagnosed solely from a diagram|be treated by forcing movement|Concerning ongoing symptoms warrant individual assessment.
Physical education can support|movement, understanding and cooperation|only elite competition|only a written score|no learning outcome|PE can support physical, cognitive and social learning.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
