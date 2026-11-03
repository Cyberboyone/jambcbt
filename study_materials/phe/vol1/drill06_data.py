"""Original athletics drill; first option is correct."""
RAW = '''
Athletics commonly includes|running, jumping and throwing|only running events and no field events|only jumping events and no races|only throwing events and no races|Athletics includes track, jumping and throwing activities. Track running and field events have different procedures and measurements.
A sprint race is commonly a|track event|field event|jumping event|throwing event|A sprint is a running event on the track. Its result is determined by the race rather than a measured field attempt.
Long jump is generally a|field event|track running event|hurdle race|relay race|Long jump is a field event. The approach and landing are parts of a jumping attempt.
High jump is generally a|field event|track running event|hurdle race|relay race|High jump is a field event. The bar clearance is measured as a height, not a running time.
Shot put is generally a|field event|track relay|sprint race|hurdle race|Shot put is a field throwing event. The shot is an implement put under the relevant event rules.
A relay is a|team running event with a baton exchange|individual field jump with no baton|throwing event with no runners|race in which no exchange takes place|Relay team members run successive portions and pass a baton. The baton must be exchanged under the rules for the event.
A hurdle race involves|running while clearing barriers|running without obstacles on the course|a single jump over a high bar|throwing an implement into a sector|Hurdle races involve clearing barriers during running. The athlete continues running while negotiating the barriers.
A distance race requires attention to|pacing over the course|using exactly the same pace for all conditions|ignoring the length of the course|timing a baton exchange in every race|Distance running involves pacing over the course. The length of the event affects how a runner distributes effort.
In a relay, a baton is passed|according to the event's exchange rules|only after the entire race ends|outside the exchange area in all cases|whenever either runner chooses regardless of the rules|The exchange must follow the relevant rules. The applicable rules define where the handover may occur.
The designated area for passing a relay baton is the|exchange area|throwing sector|high-jump landing area|long-jump take-off board|The rules define the relay exchange area. It is not the same as the landing sector for a throwing event.
A relay exchange benefits from|communication and timing|ignoring the receiving runner|avoiding any agreed signal|neglecting the designated zone|Communication and timing support a safe effective exchange. The incoming and receiving runners must coordinate their actions.
A sprint start may use|starting blocks where the rules require or permit them|a standing start in every sprint under all rules|a baton exchange as the starting method|a take-off board as the starting method|Starting blocks are used in relevant sprint events under the rules. The exact starting requirements depend on the event and regulations.
Some longer races may use|a standing start|a start from blocks in every long-distance event|a take-off from a high-jump mat|a standing throw of the shot|A standing start may be used for longer races. The official start procedure must still be followed.
A start procedure is governed by|the event's applicable competition rules|each athlete’s preference regardless of the regulations|the rules for a different event automatically|a spectator’s decision|Officials apply the rules of the relevant event. A spectator’s preference does not replace the competition rules.
Long jump is measured primarily as|a distance|a height cleared over a bar|elapsed running time|the number of completed laps|Long jump is measured as a distance under the applicable rules. The measured landing mark and event rules determine the valid result.
High jump involves clearing|a bar at a height|a take-off board as its sole objective|a distance race finish line|a designated relay takeover zone|High jump involves clearing a bar at a specified height.
A long jumper lands in|a prepared landing area|a throwing sector during an active javelin attempt|a high-jump bar|a relay takeover zone|Long jump uses a prepared landing area under event rules.
A long-jump attempt includes|approach, take-off, flight and landing|only a run with no take-off or landing|only a baton exchange|only a single stationary throw|These are the broad phases of a long-jump attempt.
A shot put uses|a shot|a discus|a javelin|a relay baton|The shot put uses a shot.
A javelin is used in|a throwing event|a jumping event|a relay event|a sprint start|Javelin is an athletics throwing event.
A discus is used in|a throwing event|a jumping event|a relay event|a sprint start|Discus is an athletics throwing event.
Before a throw, the landing sector should be|clear and controlled under the official's instructions|occupied by other participants during the throw|used for an unrelated game during the throw|checked only after the implement lands|A clear sector helps reduce foreseeable risk.
Throwing-event technique and measurement|depend on the specific event and current rules|are identical for every implement|are unrelated to event rules|never require measurement procedures|Different events have different technical and measurement rules.
An official may be responsible for|applying event rules and recording results|change results without applying the rules|remove all safety procedures|guarantee that every competitor wins|Officials apply rules and carry out assigned event duties.
Timing a race is a task that may be assigned to|an appropriate official|a long-jump measuring official only|an athlete who has not been assigned timing|a spectator without an assigned role|Race officials can have timing responsibilities.
Measuring a field attempt is a task that may be assigned to|an appropriate official|a start official alone in every event|a participant acting without authorisation|a spectator without an assigned role|Officials can measure attempts under event rules.
An athlete with concerning symptoms should|stop and obtain appropriate assistance|continue regardless of symptoms|ignore symptoms until the event ends|make a diagnosis from the result alone|Concerning symptoms should not be ignored.
Inspecting facilities and equipment before activity supports|risk management|a guarantee that no injury can occur|elimination of any need for supervision|removal of all activity-related hazards|Inspection helps identify hazards but does not eliminate all risk.
A sprint and a distance race differ in part because|their distances and pacing demands differ|one is a field throw and the other a jump|neither involves running|their pacing demands must be identical in all cases|Different race distances generally have different pacing demands.
Which event is a vertical jump over a bar without a pole?|high jump|long jump|triple jump|discus|High jump involves clearing a bar.
A field event involving horizontal distance is|long jump|high jump|shot put|discus|Long jump is measured as a horizontal distance under the rules.
A baton is most closely associated with|relay running|shot put|discus|javelin|A baton is passed between relay runners.
The term athletics includes more than track races because it also includes|field jumps and throws|only races and no field events|only events played on a court|only timing and record keeping|Athletics includes jumping and throwing events as well as races.
Which event uses a throwing implement?|javelin|high jump|long jump|a sprint race|Javelin is a throwing event.
Which event is primarily a jumping event?|long jump|discus|javelin|shot put|Long jump is a jumping event.
Competition regulations should be checked because|details can differ by event and change over time|every event has identical rules indefinitely|officials are never required to apply the rules|all implements use identical specifications|Rules and event specifications can differ or change.
An exchange-area measurement should be used|only when it matches the event and applicable rules|for every relay regardless of the event|for any event without checking the code|as the finish line for any race|Apply measurements to the relevant event and current regulations.
Fair competition requires officials to|apply the relevant rules consistently|alter results without following the rules|disregard the event format|apply different unstated criteria to each participant|Officials help apply the rules fairly.
A high jumper's goal is most directly to|clear the bar under the event's rules|land in sand at maximum horizontal distance|throw an implement into a sector|pass a baton to a teammate|High jump involves attempting to clear a bar.
A throw should begin only when|the area is clear and the relevant instructions are followed|people are standing in the landing sector|the sector cannot be checked|the official has not cleared the area|A clear sector and official instructions are important safety measures.
'''
ITEMS = []
for line in RAW.strip().splitlines():
    stem, correct, wrong1, wrong2, wrong3, explanation = line.split('|')
    ITEMS.append((stem, (correct, wrong1, wrong2, wrong3), explanation))
