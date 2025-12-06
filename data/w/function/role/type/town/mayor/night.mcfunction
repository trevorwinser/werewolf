clear @s
scoreboard players set @s menu 0

item replace entity @s container.3 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Reveal",italic:false,color:green}]

item replace entity @s container.5 with gray_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Do Nothing",italic:false,color:gray}]