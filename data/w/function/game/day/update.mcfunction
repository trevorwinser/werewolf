execute if data storage w:temp state{stage:"Greet the Town"} run data modify storage w:temp state.time set value "Night"
execute if data storage w:temp state{stage:"Greet the Town"} run return run function w:game/state/update

execute if data storage w:temp state{stage:"Judge"} run data modify storage w:temp state.time set value "Night"
execute if data storage w:temp state{stage:"Judge"} run return run function w:game/state/update

execute if data storage w:temp state{stage:"Vote"} run data modify storage w:temp state.stage set value "Judge"
execute if data storage w:temp state{stage:"Discuss"} run data modify storage w:temp state.stage set value "Vote"

execute if data storage w:temp state{stage:"Act"} run scoreboard players add day game 1
execute if data storage w:temp state{stage:"Act"} run data modify storage w:temp state.stage set value "Discuss"

function w:game/help/stage
execute if data storage w:temp state{stage:"Discuss"} run function w:game/day/discuss/load
execute if data storage w:temp state{stage:"Vote"} run function w:game/day/vote/load
execute if data storage w:temp state{stage:"Judge"} run function w:game/day/judge/load
