clear @s
scoreboard players set @s menu 0

scoreboard players set @s role_state 0
execute if data storage w:temp state{moon:"🌑"} run scoreboard players set @s role_state 1
tag @s remove invulnerable
execute if score @s role_state matches 1 run tag @s add invulnerable
execute if score @s role_state matches 1 run tellraw @s "It's a full moon. What will you do?"
execute if score @s role_state matches 1 run item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Visit",italic:false,color:red}]

execute if score @s role_state matches 1 run item replace entity @s container.4 with gray_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Do Nothing",italic:false,color:gray}]

execute if score @s role_state matches 1 run item replace entity @s container.5 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Stay Home",italic:false,color:green}]
scoreboard players reset temp