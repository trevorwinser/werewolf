clear @s
scoreboard players set @s menu 0

execute if score @s role_uses matches 1.. run item replace entity @s container.3 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Self-Heal",italic:false,color:green}]

execute if score @s role_uses matches 1.. run item replace entity @s container.5 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Heal",italic:false,color:red}]

execute if score @s role_uses matches 0 run item replace entity @s container.4 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Heal",italic:false,color:red}]