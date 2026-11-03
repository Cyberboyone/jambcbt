"""Original games and competitions drill; first option is correct."""
RAW = '''
Football is commonly classified as a|team game|an individual track sprint|a field throwing event|a racket game with a shuttlecock|Football is commonly played as a team game.
Basketball is commonly classified as a|team game|a field throwing event|a track relay|a racket game with a shuttlecock|Basketball is commonly played as a team game.
Badminton commonly uses|rackets and a shuttlecock|paddles and a table-tennis ball|a ball and a basketball hoop|a ball and football goals|Badminton uses rackets and a shuttlecock.
Table tennis commonly uses|paddles or rackets and a lightweight ball|rackets and a shuttlecock|a ball and a basketball hoop|a ball and football goals|Table tennis uses paddles and a lightweight ball on a table.
A game can be both a racket game and|a doubles game|a singles game at the same time in the same match|a throwing event by definition|a track relay by definition|Game classifications can overlap.
A pass generally transfers a ball|to another player|away from all other players without any intended recipient|only through a goal in every game|only to an official to end every game|A pass sends the ball to another player.
Receiving a ball involves|controlling an incoming ball|sending a stationary ball to an opponent|only observing without contacting the ball|awarding a point as an official|Receiving involves controlling an incoming ball.
Dribbling in different games|can have different rules and techniques|are identical under every sport’s rules|have no connection to control of the ball|must always use a racket|The meaning and restrictions of dribbling depend on the game.
A serve can|start play or a rally in a relevant game|end every match automatically|always count as a winning point|start only track races|Serving starts play or a rally in relevant games under their rules.
A team player should observe|teammates, opponents and space|only the ball without considering other players|only the official throughout every action|only the player’s starting position|Observation helps players make decisions in changing play.
Skill development can involve|practice, feedback and decision-making|guessing without practice or feedback|ignoring the task and its rules|eliminating decision-making from play|Practice and feedback support skill development.
Communication between teammates can|support coordinated play|guarantee every pass succeeds|replace the game’s rules|remove all possibility of injury|Communication can support teamwork but does not guarantee outcomes.
A referee or umpire generally helps|apply the relevant game's rules|alter results without reference to the rules|remove the need for players to participate|ignore all assigned duties|Officials apply rules according to their assigned duties.
A scorer may be responsible for|recording results or scores as assigned|make every medical assessment|change the official score at random|determine the rules of every sport|A scorer records information according to competition procedures.
A timekeeper may be responsible for|timing under the competition's procedures|change the duration without applying the rules|replace all officials in every sport|make medical diagnoses during every match|A timekeeper carries out timing duties assigned by the competition.
An organiser should consider|venue, schedule, equipment and safety|the trophy without considering the venue|only team names without a schedule|the score without checking the equipment|Competition planning includes facilities, scheduling, equipment and safety.
A league commonly involves|a series of scheduled fixtures|elimination after the first loss in every format|one match with no further fixtures in every league|no scheduled matches|A league commonly uses a series of scheduled games.
A knockout format generally|eliminates a participant after a loss under the format's rules|requires every participant to play every other participant|never uses any competition rules|guarantees equal numbers of matches for all entrants|Knockout formats generally eliminate a participant after a loss.
A competition can|combine league and knockout stages|never include more than one format|avoid any need for rules|guarantee all participants progress|Some competitions combine formats and apply additional rules.
Tie-break procedures should be checked in|the particular competition's rules|any unrelated sport’s scoring rules|the score of an unrelated game|an athlete’s training programme|Competition rules specify applicable tie-breaks.
National and international sports bodies|may organise or govern different competitions|all govern every sport under identical rules|always replace local officials|never organise competitive events|Different bodies govern or organise different sports and events.
Official rules should be checked against current sources because|they can vary by code and change over time|rules are permanently identical across all sports|games have no formal rules|officials never apply competition regulations|Sport rules and competition regulations may differ or change.
Fair play includes|respecting rules and other participants|secretly changing a score|deliberately harming an opponent|ignoring the game’s rules to win|Fair play includes respect and adherence to rules.
Winning a match|does not justify cheating or deliberate harm|makes every action fair|removes all safety duties|eliminates the need for rules|A desire to win does not justify unsafe or unfair actions.
A disagreement with an official should be handled|through the appropriate competition process|threatening another player|secretly altering the recorded score|ignoring the procedure for appeals|Use the relevant process and respect participants.
Before play, an appropriate safety step is to|inspect the playing area and equipment|ignore damaged equipment|block access to exits|require an injured participant to continue|Inspecting the area and equipment helps identify hazards.
A participant with an injury should|report it and obtain appropriate assistance|be forced to continue regardless of symptoms|be diagnosed from the score alone|wait until the competition ends before reporting|Injuries should be reported and assessed appropriately.
Modifying a game for a learner can|support meaningful participation when appropriate|guarantee that no injury can occur|remove all need for clear rules|always produce identical outcomes for every learner|Appropriate adaptations can support meaningful participation.
Which example uses a racket or paddle?|table tennis|football|basketball|volleyball|Table tennis uses a paddle or racket.
Which equipment is characteristic of badminton?|shuttlecock|table-tennis ball|basketball|football|Badminton uses a shuttlecock.
Which activity commonly uses a ball and a basket?|basketball|football|volleyball|handball|Basketball is a team game using a ball and baskets.
Which activity commonly uses a ball and goals?|football|basketball|badminton|table tennis|Football is a team game with goals.
The detailed rules for a modified school game|may differ from an international competition|must always be identical to international rules in every detail|never need to be explained to participants|must ignore safety considerations|Rules can be adapted for local educational contexts.
Transferring a dribbling rule between sports without checking is risky because|each game has its own code and restrictions|all sports use identical rules for dribbling|a dribbling action is never subject to rules|the same scoring procedure applies in every game|The relevant code defines the skill and its restrictions.
An adaptation should consider|the learner, activity, environment and safety|only a diagnostic label without consultation|only the competition score|only the organiser’s favourite equipment|Adaptations should suit the participant and context.
A league table or standings must follow|the competition's scoring and tie-break rules|another sport’s scoring rules automatically|an unrelated team’s training schedule|the number of spectators without reference to results|Standings depend on the particular competition rules.
An official's exact responsibilities|depend on the sport and competition|are identical across all sports|are unrelated to assigned duties|can never include safety responsibilities|Duties vary by sport and assignment.
A game activity can develop|physical skills and social cooperation|only competitive scores and no learning|physical skills without any social interaction in every case|only the memorisation of team names|Games can support movement, communication and cooperation.
A safe playing surface should be|checked for relevant hazards|assumed safe without inspection|used despite an obvious unaddressed hazard|treated as a substitute for appropriate supervision|Checking the surface helps identify hazards.
A player sending a ball to a teammate demonstrates|passing|receiving|shooting at goal|dribbling|Sending the ball to a teammate is passing.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
