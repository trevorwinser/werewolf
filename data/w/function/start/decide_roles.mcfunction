# Create a list of all remaining available roles
data modify storage w:temp role_choice set from storage w:config role.list

# Remove the Any roles from pool
data remove storage w:temp role_choice[0]
data remove storage w:temp role_choice[1]
data remove storage w:temp role_choice[11]

say "0/3"

data modify storage w:temp for_loop.command set value "function w:start/macro1 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:temp role_choice
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop
say "1/3"

# Convert the Any roles to actual roles
#data modify storage w:temp for_loop.command set value "function w:start/macro3 with storage w:temp for_loop"
#data modify storage w:temp for_loop.start set value 0
#data modify storage w:temp for_loop.step set value 1
#execute store result score temp storage run data get storage w:config role.available
#execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
#function w:help/for_loop/start with storage w:temp for_loop
say "2/3"
# Decide which players gets what role
execute store result score high game run data get storage w:config role.available
scoreboard players remove high game 1
execute store result storage w:temp high int 1 run scoreboard players get high game
data modify storage w:temp low set value 0
execute store result storage w:temp roll int 1 run function w:help/roll/get with storage w:temp
function w:start/assign_role with storage w:temp

#Display role
say done!