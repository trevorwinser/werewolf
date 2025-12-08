clear @s
scoreboard players set @s menu 0
execute unless entity @a[tag=cultleader,tag=!spectator] run tellraw @s "You will become the new Cult Leader tomorrow"
execute unless entity @a[tag=cultleader,tag=!spectator] run tag @s add can_convert
item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Kill",italic:false,color:red}]

item replace entity @s container.5 with gray_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Do Nothing",italic:false,color:red}]