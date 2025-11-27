# Loads score from storage into scoreboard for all roles
data modify storage w:temp for_loop.command set value "function w:config/update/storage2 with storage w:temp for_loop"
data modify storage w:temp for_loop.section set value "role"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:config role.list
scoreboard players remove temp storage 1
execute store result storage w:temp for_loop.end int 1 run scoreboard players get temp storage
function w:help/for_loop/start with storage w:temp for_loop
