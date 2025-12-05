scoreboard players set @s menu 2
clear @s
item replace entity @s container.0 with light_blue_banner[consumable={consume_seconds:10000},custom_name=[{text:"Back",italic:false}],custom_data={path:"back"},banner_patterns=[{pattern:stripe_left,color:white},{pattern:stripe_middle,color:white},{pattern:stripe_top,color:light_blue},{pattern:stripe_bottom,color:light_blue},{pattern:curly_border,color:light_blue}]]
give @s stone[custom_name="1"]
give @s stone[custom_name="2"]
execute if data storage w:temp state{time:"Night"} at @s as @a[tag=player_8,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute if data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 8",italic:false}
execute if data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 8
execute if data storage w:temp state{time:"Night"} at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_9,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 9",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 9
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_10,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 10",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 10
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_11,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 11",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 11
execute at @s run tag @e[type=item,distance=..3] add renamed
schedule function w:role/menu/remove_filler 3t