clear @s
scoreboard players set @s menu 0

scoreboard players set 4 game 4
scoreboard players operation temp game = time game
scoreboard players operation temp game %= 4 game
execute if score temp game matches 2.. run tellraw @s "It's a full moon. What will you do?"
execute if score temp game matches 2.. run item replace entity @s container.3 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Visit",italic:false,color:red}]

execute if score temp game matches 2.. run item replace entity @s container.5 with lime_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Stay Home",italic:false,color:green}]
scoreboard players reset temp