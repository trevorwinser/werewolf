scoreboard objectives add for_loop dummy
scoreboard players set i storage 0
$data modify storage w:temp for_loop.command set value "$(command)"
$data modify storage w:temp for_loop.start set value $(start)
$data modify storage w:temp for_loop.step set value $(step)
$data modify storage w:temp for_loop.end set value $(end)
function w:help/for_loop/run with storage w:temp for_loop
#data remove storage w:temp for_loop
scoreboard objectives remove for_loop