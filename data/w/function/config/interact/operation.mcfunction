$execute as @s if $(condition) store result storage w:config $(path) int 1 run scoreboard players $(operation) $(path) storage $(value)
#$execute if score $(path) storage < $(path) max store result storage hs:config $(path) int 1 run scoreboard players $(operation) $(path) storage 1
$execute unless $(condition)
execute at @s run function w:sound/play_local {sound:"minecraft:ui.button.click",volume:0.1,pitch:1}


data remove entity @s interaction

function w:config/update/value with entity @s data

#function w:reset/attribute
function w:config/update/roles1