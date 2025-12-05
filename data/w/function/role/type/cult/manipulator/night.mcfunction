clear @s
scoreboard players set @s menu 0
item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Select Target 1",italic:false,color:red}]

item replace entity @s container.5 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Select Target 2",italic:false,color:green}]