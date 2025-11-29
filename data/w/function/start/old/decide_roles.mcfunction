# Create a list of all remaining available roles
function w:config/update/roles1
execute if function w:start/any1 run function w:start/replace_any1


# Decide which players gets what role
execute store result score high game run data get storage w:config role.available
scoreboard players remove high game 1
execute store result storage w:temp high int 1 run scoreboard players get high game
data modify storage w:temp low set value 0
execute store result storage w:temp roll int 1 run function w:help/roll/get with storage w:temp
function w:start/assign_role with storage w:temp

#Display role
title @a title "Your role is..."