clear @s
scoreboard players set @s menu 0
tellraw @s {"text":"Current Success Rate: ","extra": [{"score":{"name":"@s","objective":"role_state"}},{text:"%"}]}

item replace entity @s container.4 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to take the Fall",italic:false,color:red}]