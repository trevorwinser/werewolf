execute store result score role.amount storage run data get storage w:config role.available
execute if score role.amount storage matches 11 run return fail
$data modify storage w:temp inner_for_loop.type set from storage w:config role.list[$(start)].type
$data modify storage w:temp inner_for_loop.name set from storage w:config role.list[$(start)].name
$data modify storage w:temp inner_for_loop.display set from storage w:config role.list[$(start)].display
data modify storage w:temp inner_for_loop.command set value "function w:config/update/roles4 with storage w:temp inner_for_loop"
data modify storage w:temp inner_for_loop.start set value 0
data modify storage w:temp inner_for_loop.step set value 1
function w:config/update/roles3 with storage w:temp inner_for_loop
function w:help/inner_for_loop/start with storage w:temp inner_for_loop

say CUNT