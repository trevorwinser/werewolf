clear @s
scoreboard players set @s menu 0
tellraw @s[tag=can_convert] "You will become the Sheriff tomorrow night"
item replace entity @s container.4 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Investigate",italic:false,color:green}]