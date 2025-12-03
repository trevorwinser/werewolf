function w:end/remove_roles/load

scoreboard objectives remove display
scoreboard objectives remove judgement
scoreboard objectives remove timer
scoreboard objectives remove votes

bossbar remove stage

tag @a remove 1
tag @a remove 2
tag @a remove 3
tag @a remove 4
tag @a remove 5
tag @a remove 6
tag @a remove 7
tag @a remove 8
tag @a remove 9
tag @a remove 10
tag @a remove 11


execute as @a run attribute @s minecraft:jump_strength base set 0.42

scoreboard players set start game 0

function w:load