# Stores the active roles in role.available with accurate amounts 
kill @e[tag=role_list_remove]
data remove storage w:config role.available
data modify storage w:config role.available set value []
data modify storage w:config role.display.text set value ""
scoreboard players set role.amount storage 0
scoreboard players set role.townamount storage 0
scoreboard players set role.neutralamount storage 0
scoreboard players set role.cultamount storage 0
scoreboard players set role.individualamount storage 0

data modify storage w:temp for_loop.command set value "function w:config/update/roles2 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:config role.list
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop

execute store result score role.amount storage run data get storage w:config role.available

# Adds remaining \n to display
data modify storage w:temp for_loop.command set value "function w:config/update/roles5 with storage w:temp for_loop"
scoreboard players operation temp storage = role.amount storage
execute store result storage w:temp for_loop.start int 1 run scoreboard players add temp storage 1
data modify storage w:temp for_loop.step set value 1
data modify storage w:temp for_loop.end set value 11
function w:help/for_loop/start with storage w:temp for_loop

data modify storage w:temp for_loop.command set value "function w:config/update/roles6 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result storage w:temp for_loop.end int 1 run scoreboard players get role.amount storage
scoreboard players set temp storage 276

execute if entity @e[nbt={text:{text:"Roles"},data:{type:"text"}}] positioned 29.95 0 4.0 run tag @n[type=text_display,distance=..0.1] add role_list
data modify entity @n[tag=role_list] text.text set string storage w:config role.display.text
function w:help/for_loop/start with storage w:temp for_loop

