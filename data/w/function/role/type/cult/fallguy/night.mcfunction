clear @s
scoreboard players set @s menu 0
tellraw @s ""
execute unless entity @a[tag=acolyte,tag=!spectator] run tellraw @s "You may become the new Acolyte tomorrow"
execute unless entity @a[tag=acolyte,tag=!spectator] run tag @s add can_convert
tellraw @s {"text":"Current Success Rate: ","extra": [{"score":{"name":"@s","objective":"role_state"}},{text:"%"}]}
execute if entity @a[tag=cult,tag=!fallguy,tag=!spectator] run item replace entity @s container.4 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to take the Fall",italic:false,color:red}]
execute unless entity @a[tag=cult,tag=!fallguy,tag=!spectator] run tellraw @s "You have nobody to take the fall for!"