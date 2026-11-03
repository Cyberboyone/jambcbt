"""Original skeleton and joints drill; the first option is correct."""
RAW = '''
A major function of the skeleton is to|support the body|perform all food digestion|carry all neural signals without nerves|replace the action of skeletal muscle|The skeleton provides structural support.
The skull helps protect the|brain|heart|spinal cord throughout its length|lungs|The skull protects the brain.
The rib cage helps protect the|heart and lungs|brain and spinal cord|stomach and intestines alone|pelvic organs only|The rib cage helps protect organs including the heart and lungs.
Bones act with muscles and joints to support|movement|blood clotting without any other tissues|digestion without the digestive system|gas exchange in the alveoli|Movement involves coordinated action of bones, muscles and joints.
Bone is involved in storing|minerals|oxygen as its primary stored mineral|glucose as its only mineral|water as its only mineral|Bone stores minerals including calcium and phosphorus.
Blood-cell formation is associated with|bone marrow|articular cartilage|synovial fluid|ligaments|Bone marrow is involved in blood-cell formation.
The axial skeleton includes the|skull, vertebral column and rib cage|limbs and girdles but not the skull|upper limbs only|pelvic girdle and lower limbs only|The axial skeleton includes the skull and trunk framework.
The appendicular skeleton includes the|limbs and their girdles|skull and vertebral column only|ribs and sternum only|skull and rib cage only|The appendicular skeleton includes limbs and shoulder and pelvic girdles.
The femur is located in the|thigh|upper arm|forearm|lower leg|The femur is the thigh bone.
The humerus is located in the|upper arm|thigh|forearm|lower leg|The humerus is in the upper arm.
The tibia is located in the|lower leg|forearm|upper arm|thigh|The tibia is one of the lower-leg bones.
The fibula is located in the|lower leg|forearm|upper arm|thigh|The fibula is in the lower leg.
The radius and ulna are in the|forearm|thigh|lower leg|upper arm|The radius and ulna are forearm bones.
The sternum is part of the|axial skeleton|appendicular skeleton|muscular system|respiratory system|The sternum is part of the axial skeleton.
The shoulder girdle belongs to the|appendicular skeleton|axial skeleton alone|the skull alone|the rib cage alone|The shoulder girdle is part of the appendicular skeleton.
A ligament generally connects|bone to bone|muscle to bone|muscle to muscle in every joint|air sacs to blood vessels|Ligaments connect bones and help stabilise joints.
A tendon generally connects|muscle to bone|bone to bone|cartilage to cartilage in every joint|nerve to nerve|Tendons connect muscles to bones and transmit force.
Cartilage at many movable joints helps|reduce friction and distribute load|create a rigid bone-to-bone fusion at every joint|produce red blood cells in every joint|replace the ligaments that stabilise every joint|Articular cartilage supports joint movement and load distribution.
A joint is a place where|bones meet|muscles manufacture blood cells|all bones are fused without movement|air enters the lungs|A joint is a connection or meeting place between bones.
Synovial fluid helps|lubricate a synovial joint|completely eliminate load on a joint|fuse joint surfaces together|replace all joint cartilage|Synovial fluid helps lubricate synovial joints.
A hinge joint mainly permits|flexion and extension|rotation around a single longitudinal axis only|movement in all directions equally|no movement at all|A hinge joint primarily allows bending and straightening.
The elbow is commonly used as an example of a|hinge joint|ball-and-socket joint|pivot joint|fixed skull suture|The elbow is commonly described as a hinge joint.
The shoulder is commonly described as a|ball-and-socket joint|hinge joint|pivot joint|fixed skull suture|The shoulder is a ball-and-socket joint.
The hip is commonly described as a|ball-and-socket joint|hinge joint|pivot joint|fixed skull suture|The hip is a ball-and-socket joint.
A pivot joint permits|rotation around an axis|movement only in a hinge plane|no movement between connected bones|equal movement in every direction|Pivot joints permit rotation around an axis.
Flexion generally|decreases the angle between body segments|increases the angle between the segments|always moves the limb away from the midline|always rotates the limb about its axis|Flexion generally decreases a joint angle.
Extension generally|increases the angle between body segments|decreases the angle between the segments|always moves the limb towards the midline|always rotates the limb towards the torso|Extension generally increases a joint angle.
Abduction moves a limb|away from the body's midline|towards the midline|around the limb’s long axis in every case|only upwards regardless of body position|Abduction is movement away from the midline.
Adduction moves a limb|towards the body's midline|away from the midline|around the limb’s long axis in every case|only backwards regardless of body position|Adduction is movement towards the midline.
Bending the elbow is commonly|flexion|extension|abduction|rotation|Bending the elbow is an example of flexion.
Straightening the elbow is commonly|extension|flexion|adduction|rotation|Straightening the elbow is an example of extension.
A ball-and-socket joint generally allows|movement in several directions|only flexion and extension in one plane|no movement between bones|rotation without movement in any other direction|Ball-and-socket structure allows movement in several directions.
The shoulder and hip|are both ball-and-socket joints but differ in individual range and stability|have identical movement and stability in all people|are both hinge joints|are both immovable joints|Both are ball-and-socket joints but have different characteristics.
Not every joint is freely movable because|joint structures and movement ranges vary|all joints have the same structure|all joints are freely movable|bones cannot connect without muscles|Joints vary in structure and degree of movement.
Posture refers to|how the body is positioned or aligned|only the speed of a movement|only a fixed type of joint|the number of muscles in a limb|Posture describes body position or alignment.
A persistent or worsening pain should be|assessed by an appropriately qualified health professional|ignored until it disappears regardless of severity|diagnosed solely from a diagram|managed by forcing painful movement|Persistent or concerning symptoms warrant individual assessment.
A spinal curve|can be a normal feature of the spine|always indicates disease|always means the spine is fractured|cannot occur in a healthy spine|Some curvature of the spine is normal.
A diagram label describing spinal curvature|is not by itself an individual diagnosis|establishes a diagnosis for every individual|proves one treatment fits all individuals|identifies the cause without further assessment|Causes and management require individual assessment.
A tendon transmits force from|muscle to bone|bone to bone alone|cartilage to cartilage alone|skin to skin alone|Tendons transmit force from muscle to bone.
Ligaments help|stabilise joints by connecting bones|produce movement by contracting like muscles|connect muscle directly to bone|lubricate joint surfaces as their main function|Ligaments connect bones and contribute to joint stability.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
