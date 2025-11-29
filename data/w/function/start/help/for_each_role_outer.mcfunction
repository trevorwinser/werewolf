$data modify storage w:temp for_loop.command set value "$(command)"
$data modify storage w:temp for_loop.inner_for_loop_command set value "$(inner_for_loop_command)"
$data modify storage w:temp for_loop.inner_for_loop_value set value "$(inner_for_loop_value)"
$data modify storage w:temp for_loop.value set value "$(value)"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:temp role.list
execute unless data storage w:temp for_loop{value:"list"} store result score temp storage run data get storage w:temp role.$(value)
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop