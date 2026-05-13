execute store result score tick timer run time query gametime
execute store result score daytime timer run time query day
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


execute if score start game matches 0 at @e[type=item] run tp @p 0 1 0
execute if score start game matches 0 run kill @e[type=item]
execute if score start game matches 0 positioned 0 0 0 run clear @a[distance=..35] paper
#execute if score start game matches 0 positioned 0 0 0 as @a[distance=35..] if predicate w:height run item replace entity @s weapon.mainhand with paper[custom_name={"bold":true,"italic":false,"text":"Drop to Go to Spawn"}] 1
execute if score start game matches 0 run function w:config/tick
execute if score start game matches 1 run function w:game/tick
function w:advancement/tick