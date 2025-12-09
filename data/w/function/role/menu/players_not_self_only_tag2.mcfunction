scoreboard players set @s menu 2
tag @s add me
clear @s
data modify storage w:temp text1 set value "Select "
item replace entity @s container.0 with light_blue_banner[consumable={consume_seconds:10000},custom_name=[{text:"Back",italic:false}],custom_data={path:"back"},banner_patterns=[{pattern:stripe_left,color:white},{pattern:stripe_middle,color:white},{pattern:stripe_top,color:light_blue},{pattern:stripe_bottom,color:light_blue},{pattern:curly_border,color:light_blue}]]
give @s stone[custom_name="1"]
give @s stone[custom_name="2"]
$execute if data storage w:temp state{time:"Night"} at @s as @a[tag=player_8,tag=!spectator,tag=!me,tag=$(tag)] run loot spawn ~ ~ ~ loot w:head
execute if data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify storage w:temp text2 set from entity @s Item.components."minecraft:profile".name
execute if data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run function w:role/menu/set_name with storage w:temp
execute if data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 8
execute if data storage w:temp state{time:"Night"} at @s run tag @e[type=item,distance=..3] add renamed
$execute at @s as @a[tag=player_9,tag=!spectator,tag=!me,tag=$(tag)] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify storage w:temp text2 set from entity @s Item.components."minecraft:profile".name
execute at @s as @e[type=item,distance=..3,tag=!renamed] run function w:role/menu/set_name with storage w:temp
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 9
execute at @s run tag @e[type=item,distance=..3] add renamed
$execute at @s as @a[tag=player_10,tag=!spectator,tag=!me,tag=$(tag)] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify storage w:temp text2 set from entity @s Item.components."minecraft:profile".name
execute at @s as @e[type=item,distance=..3,tag=!renamed] run function w:role/menu/set_name with storage w:temp
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 10
execute at @s run tag @e[type=item,distance=..3] add renamed
$execute at @s as @a[tag=player_11,tag=!spectator,tag=!me,tag=$(tag)] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify storage w:temp text2 set from entity @s Item.components."minecraft:profile".name
execute at @s as @e[type=item,distance=..3,tag=!renamed] run function w:role/menu/set_name with storage w:temp
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 11
execute at @s run tag @e[type=item,distance=..3] add renamed
tag @s remove me
schedule function w:role/menu/remove_filler 3t