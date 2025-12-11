execute store result score tick timer run time query gametime
execute store result score daytime timer run time query daytime
scoreboard players operation tick timer %= 20 timer
scoreboard players operation rotation timer = daytime timer

execute as @a[tag=!joined] run function w:first_join
execute as @a unless score @s online matches 1 run function w:join

scoreboard players reset * online
scoreboard players set @a online 1
scoreboard players operation total online += @a online
execute if score total online matches 2.. run tag @a remove lobby_reset
execute if score start game matches 1 if score total online matches 1 if entity @a[tag=!lobby_reset] run title @a actionbar "Only one player. Resetting to lobby"
execute if score start game matches 1 if score total online matches 1 if entity @a[tag=!lobby_reset] run function w:load
execute if score start game matches 1 if score total online matches 1 if entity @a[tag=!lobby_reset] run title @a actionbar "Done!"
execute if score start game matches 1 if score total online matches 1 run tag @a add lobby_reset


execute if score start game matches 0 as @a if predicate w:night_vision run effect give @s night_vision 11 0 true
execute if score start game matches 0 as @a unless predicate w:night_vision run effect clear @s
execute if score start game matches 0 run function w:config/tick
execute if score start game matches 1 run function w:game/tick
function w:advancement/tick