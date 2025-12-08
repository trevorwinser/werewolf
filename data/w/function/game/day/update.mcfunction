execute if data storage w:temp state{stage:"Greet the Town"} run data modify storage w:temp state.time set value "Night"
execute if data storage w:temp state{stage:"Greet the Town"} run return run function w:game/state/update

execute if data storage w:temp state{stage:"Last Words"} 
execute if data storage w:temp state{stage:"Last Words"} run data modify storage w:temp state.time set value "Night"
execute if data storage w:temp state{stage:"Last Words"} run return run function w:game/state/update

execute if data storage w:temp state{stage:"Judge"} run function w:game/day/judge/decide_judgement

execute if data storage w:temp state{stage:"Tie"} run data modify storage w:temp state.time set value "Night"
execute if data storage w:temp state{stage:"Tie"} run return run function w:game/state/update

execute if data storage w:temp state{stage:"Vote"} run return run function w:game/day/vote/count_votes
execute if data storage w:temp state{stage:"Discuss"} run data modify storage w:temp state.stage set value "Vote"

execute if data storage w:temp state{stage:"Act"} run data modify storage w:temp state.stage set value "Discuss"

execute if data storage w:temp state{stage:"Discuss"} run function w:game/day/discuss/load
execute if data storage w:temp state{stage:"Vote"} run function w:game/day/vote/load
#function w:game/help/stage