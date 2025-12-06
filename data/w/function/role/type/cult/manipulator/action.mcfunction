execute if score @s target1 matches 0 run tag @r[tag=!spectator,tag=!cult] add random1
execute if score @s target2 matches 0 run tag @r[tag=!spectator,tag=!cult] add random2
execute if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose a player! You randomly picked"},{selector:"@a[tag=random1]"}]
execute if score @s target2 matches 0 run tellraw @s [{text:"You forgot to choose a player! You randomly picked"},{selector:"@a[tag=random2]"}]
execute if score @s target1 matches 0 run scoreboard players @s target1 = @a[tag=random1] display
execute if score @s target2 matches 0 run scoreboard players @s target2 = @r[tag=random2] display
tag @a remove random1
tag @a remove random2
execute store result storage w:temp 1 int 1 run scoreboard players get @s target1
execute store result storage w:temp 2 int 1 run scoreboard players get @s target2
function w:role/type/cult/manipulator/action_macro with storage w:temp