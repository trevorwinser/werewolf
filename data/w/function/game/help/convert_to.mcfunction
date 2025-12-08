execute if score @s index matches 0..10 store result storage w:temp index int 1 run scoreboard players get @s index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
$data modify storage w:temp convert_to set value "$(role)"
execute if data storage w:temp {convert_to:"vampire"} run data modify storage w:temp new_role set from storage w:config role.list[16]
execute if data storage w:temp {convert_to:"cultleader"} run data modify storage w:temp new_role set from storage w:config role.list[19]
execute if data storage w:temp {convert_to:"acolyte"} run data modify storage w:temp new_role set from storage w:config role.list[20]
execute if data storage w:temp {convert_to:"manipulator"} run data modify storage w:temp new_role set from storage w:config role.list[22]
execute if data storage w:temp {convert_to:"fallguy"} run data modify storage w:temp new_role set from storage w:config role.list[23]
execute if data storage w:temp {convert_to:"sheriff"} run data modify storage w:temp new_role set from storage w:config role.list[5]
execute if data storage w:temp {convert_to:"jester"} run data modify storage w:temp new_role set from storage w:config role.list[14]

function w:game/help/replace_role
function w:game/help/set_role with storage w:temp

execute if data storage w:temp {convert_to:"vampire"} run tag @a remove youngest
execute if data storage w:temp {convert_to:"vampire"} run tag @s add youngest
execute if data storage w:temp {convert_to:"vampire"} run tellraw @a[tag=vampire] [{selector:"@s"},{text:" has been converted into a Vampire"}]
execute if data storage w:temp {convert_to:"cultleader"} run tellraw @a[tag=cult,tag=!cultleader] [{selector:"@s"},{text:" has become the new Cult Leader"}]
execute if data storage w:temp {convert_to:"acolyte"} run tellraw @a[tag=cult,tag=!acolyte] [{selector:"@s"},{text:" has become the new Acolyte"}]
execute if data storage w:temp {convert_to:"manipulator"} run tellraw @a[tag=cult,tag=!manipulator] [{selector:"@s"},{text:" has become the new Manipulator"}]
execute if data storage w:temp {convert_to:"fallguy"} run tellraw @a[tag=cult,tag=!manipulator] [{selector:"@s"},{text:" has become the new Manipulator"}]
execute if data storage w:temp {convert_to:"sheriff"} run tellraw @s "You have been promoted to Sheriff"
execute if data storage w:temp {convert_to:"jester"} run tellraw @s "Your target was killed at night"


team join vampire @s[tag=vampire]
tellraw @s[tag=vampire] "You are part of the vampire family! Use /teammsg to message your fellow vamps"