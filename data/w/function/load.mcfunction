function w:reset

schedule clear w:game/load

clear @a
kill @e[type=!player]
tp @a 0 1 0
spawnpoint @a 0 1 0

gamemode adventure @a

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule showDeathMessages false

time set midnight

scoreboard objectives add game dummy
scoreboard objectives add timer dummy
scoreboard players set start game 0 
scoreboard players set 20 timer 20

difficulty peaceful
function w:config/load
data remove storage w:temp for_loop
data remove storage w:temp inner_for_loop
scoreboard objectives setdisplay sidebar