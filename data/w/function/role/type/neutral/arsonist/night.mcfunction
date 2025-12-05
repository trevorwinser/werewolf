clear @s
scoreboard players set @s menu 0
item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Douse",italic:false,color:red}]

item replace entity @s container.4 with gray_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Undouse Yourself",italic:false,color:gray}]

item replace entity @s container.5 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Ignite",italic:false,color:green}]