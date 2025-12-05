scoreboard players set @s menu 1
clear @s
execute if data storage w:temp state{time:"Night"} run item replace entity @s container.0 with light_blue_banner[consumable={consume_seconds:10000},custom_name=[{text:"Back",italic:false}],custom_data={path:"back"},banner_patterns=[{pattern:stripe_left,color:white},{pattern:stripe_middle,color:white},{pattern:stripe_top,color:light_blue},{pattern:stripe_bottom,color:light_blue},{pattern:curly_border,color:light_blue}]]
execute at @s as @a[tag=player_1,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 1",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 1
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_2,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 2",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 2
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_3,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 3",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 3
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_4,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 4",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 4
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_5,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 5",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 5
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_6,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 6",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 6
execute at @s run tag @e[type=item,distance=..3] add renamed
execute at @s as @a[tag=player_7,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 7",italic:false}
execute at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 7
execute at @s run tag @e[type=item,distance=..3] add renamed
execute unless data storage w:temp state{time:"Night"} at @s as @a[tag=player_8,tag=!spectator] run loot spawn ~ ~ ~ loot w:head
execute unless data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Select Player 8",italic:false}
execute unless data storage w:temp state{time:"Night"} at @s as @e[type=item,distance=..3,tag=!renamed] run data modify entity @s Item.components."minecraft:custom_data".id set value 8
execute unless data storage w:temp state{time:"Night"} at @s run tag @e[type=item,distance=..3] add renamed

item replace entity @s container.8 with light_blue_banner[consumable={consume_seconds:10000},custom_name=[{text:"Next",italic:false}],custom_data={path:"next"},banner_patterns=[{pattern:stripe_right,color:white},{pattern:stripe_middle,color:white},{pattern:stripe_top,color:light_blue},{pattern:stripe_bottom,color:light_blue},{pattern:curly_border,color:light_blue}]]