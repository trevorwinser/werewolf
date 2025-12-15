tag @a[tag=fed,tag=town,tag=!spectator] add well_fed
tag @a[tag=fed,tag=!town,tag=!spectator] add sick

execute if score @s target1 matches 0 run tag @r[tag=!fed,tag=!me,tag=!spectator] add random

execute if entity @a[tag=random] if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose a target! You randomly picked "},{selector:"@a[tag=random]"}]
execute if score @s target1 matches 0 store result score @s target1 run scoreboard players get @p[tag=random] display
tag @a remove random
execute store result storage w:temp target1 int 1 run scoreboard players get @s target1
execute store result storage w:temp target2 int 1 run scoreboard players get @s target2
function w:role/type/town/chef/action_macro with storage w:temp