$scoreboard objectives add $(name) dummy
$data modify storage w:temp $(name).command set value "$(command)"
$data modify storage w:temp $(name).name set value "$(name)"
$data modify storage w:temp $(name).start set value $(start)
$data modify storage w:temp $(name).step set value $(step)
$data modify storage w:temp $(name).end set value $(end)
function w:help/unique_loop/run with storage w:temp $(name)
#data remove storage w:temp for_loop
scoreboard objectives remove for_loop