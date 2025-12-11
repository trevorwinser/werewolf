clear @s
scoreboard players set @s menu 0
execute if score @s role_uses matches 1.. run item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Protect",italic:false,color:red}]

execute if score @s role_uses matches 1.. run item replace entity @s container.5 with gray_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Do Nothing",italic:false,color:gray}]

execute if score @s role_uses matches 0 run tellraw @s "You do not have a night time action anymore!"