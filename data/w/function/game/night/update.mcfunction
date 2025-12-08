execute if data storage w:temp state{stage:"Act"} run data modify storage w:temp state.time set value "Day" 
execute if data storage w:temp state{stage:"Act"} run return run function w:game/state/update

data modify storage w:temp state.time set value "Night"
data modify storage w:temp state.stage set value "Act"
scoreboard players add time game 1
function w:game/night/load
#function w:game/help/stage