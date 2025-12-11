clear @s
scoreboard players set @s menu 0

item replace entity @s[tag=!can_convert] container.4 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Visit",italic:false,color:red}]