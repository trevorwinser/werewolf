# Remove the Any roles from pool
data remove storage w:temp role_choice
data modify storage w:temp role_choice set from storage w:config role.list
data remove storage w:temp role_choice[0]
data remove storage w:temp role_choice[1]
data remove storage w:temp role_choice[11]


data modify storage w:temp for_loop.command set value "function w:start/replace_any2 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:temp role_choice
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop

# Convert the Any roles to actual roles
data modify storage w:temp for_loop.command set value "function w:start/replace_any4 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:config role.available
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop