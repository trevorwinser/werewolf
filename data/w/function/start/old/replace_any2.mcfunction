data modify storage w:temp inner_for_loop.for_loop_start set from storage w:temp for_loop.start
data modify storage w:temp inner_for_loop.command set value "function w:start/replace_any3 with storage w:temp inner_for_loop"
data modify storage w:temp inner_for_loop.start set value 0
data modify storage w:temp inner_for_loop.step set value 1
execute store result score temp storage run data get storage w:config role.available
execute store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/inner_for_loop/start with storage w:temp inner_for_loop