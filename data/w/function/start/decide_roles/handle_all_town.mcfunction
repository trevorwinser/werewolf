data modify storage w:temp for_loop.command set value "function w:start/help/add_any {type:"any"}"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
scoreboard players operation temp storage = role.halfamount
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with w:temp for_loop