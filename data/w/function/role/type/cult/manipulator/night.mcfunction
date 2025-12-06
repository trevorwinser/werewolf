clear @s
scoreboard players set @s menu 0
execute unless entity @a[tag=acolyte,tag=!spectator] run tellraw @s "You may become the new Acolyte tomorrow" 

item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Select Target 1",italic:false,color:red}]

item replace entity @s container.5 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Select Target 2",italic:false,color:green}]