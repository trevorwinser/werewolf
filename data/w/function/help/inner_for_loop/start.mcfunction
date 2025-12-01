scoreboard objectives add inner_for_loop dummy
$data modify storage w:temp inner_for_loop.command set value "$(command)"
$data modify storage w:temp inner_for_loop.start set value $(start)
$data modify storage w:temp inner_for_loop.step set value $(step)
$data modify storage w:temp inner_for_loop.end set value $(end)
function w:help/inner_for_loop/run with storage w:temp inner_for_loop
#data remove storage w:temp inner_for_loop
scoreboard objectives remove inner_for_loop