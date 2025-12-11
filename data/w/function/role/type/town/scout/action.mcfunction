execute if score @s target1 matches 0 run tag @r[tag=!spectator,tag=!scout] add random1
execute if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose a target! You randomly picked "},{selector:"@a[tag=random1]"}]
execute if score @s target1 matches 0 run scoreboard players operation @s target1 = @a[tag=random1] display
tag @a remove random1
execute store result storage w:temp target int 1 run scoreboard players get @s target1
function w:role/type/town/scout/action_macro with storage w:temp