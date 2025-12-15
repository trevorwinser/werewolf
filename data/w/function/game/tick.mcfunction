team join spectator @a[tag=spectator]
gamemode spectator @a[team=spectator]

execute store result bossbar stage value run scoreboard players get remaining timer
execute if score remaining timer matches ..0 run function w:game/state/update

execute if data storage w:temp state{stage:"Vote"} if score tick timer matches 19 run function w:game/help/display_votes

execute if score tick timer matches 10..19 as @a[tag=!spectator] run function w:game/help/role
function w:game/help/bossbar
function w:game/help/clear

scoreboard players set alive online 0
scoreboard players operation alive online += @a[tag=!spectator] online
execute if score tick timer matches 0 run scoreboard players remove remaining timer 1