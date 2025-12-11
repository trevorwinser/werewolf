execute unless score @s role_action matches 0 as @a[tag=!spectator] if score @s display = @n[tag=manipulator,tag=!spectator] target1 run tag @s add random1
execute unless score @s role_action matches 0 as @a[tag=!spectator] if score @s display = @n[tag=manipulator,tag=!spectator] target2 run tag @s add random1
execute unless score @s role_action matches 0 if score @s target1 matches 0 run tag @r[tag=!spectator,tag=!cult,tag=!random2] add random1
execute unless score @s role_action matches 0 if score @s target2 matches 0 run tag @r[tag=!spectator,tag=!cult,tag=!random1] add random2
execute unless score @s role_action matches 0 if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose target 1! You randomly picked "},{selector:"@a[tag=random1]"}]
execute unless score @s role_action matches 0 if score @s target2 matches 0 run tellraw @s [{text:"You forgot to choose target 2! You randomly picked "},{selector:"@a[tag=random2]"}]
execute unless score @s role_action matches 0 if score @s target1 matches 0 run scoreboard players operation @s target1 = @a[tag=random1] display
execute unless score @s role_action matches 0 if score @s target2 matches 0 run scoreboard players operation @s target2 = @r[tag=random2] display
tag @a remove random1
tag @a remove random2
execute store result storage w:temp 1 int 1 run scoreboard players get @s target1
execute store result storage w:temp 2 int 1 run scoreboard players get @s target2
execute unless score @s role_action matches 0 run function w:role/type/cult/manipulator/action_macro with storage w:temp