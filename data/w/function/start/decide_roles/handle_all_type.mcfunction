data modify storage w:temp for_loop.command set value "function w:start/help/remove_some with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
scoreboard players operation temp storage = role.halfamount storage
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop


$data modify storage w:temp for_loop.command set value "function w:start/help/add_not_type {index:$(index)}"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
scoreboard players operation temp storage = role.halfamount storage
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop