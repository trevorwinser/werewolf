execute if score @s target1 matches 0 run tag @r[tag=!vampirehunter,tag=!spectator] add random
execute if entity @a[tag=random] if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose a target! You randomly picked "},{selector:"@a[tag=random]"}]
execute if score @s target1 matches 0 store result score @s target1 run scoreboard players get @p[tag=random] display
tag @a remove random
execute store result storage w:temp target int 1 run scoreboard players get @s target1
function w:role/type/town/vampirehunter/action_macro with storage w:temp