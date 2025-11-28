data modify storage w:temp for_loop.command set value "function w:start/help/add_any with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
$data modify storage w:temp for_loop.type set value "$(type)"
$execute store result storage w:temp for_loop.end int 1 run scoreboard players remove role.any$(type) storage 1
function w:help/for_loop/start with storage w:temp for_loop