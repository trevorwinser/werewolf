team join spectator @a[tag=spectator]
gamemode spectator @a[team=spectator]

execute store result bossbar stage value run scoreboard players get remaining timer
execute if score remaining timer matches ..0 run function w:game/state/update

bossbar set stage name {"text": "","extra": [{"storage":"w:temp", "nbt":"state.time"},{"text":" "},{"score":{"name":"time","objective":"game"}},{"text":" | Time Remaining: "},{"score":{"name":"remaining","objective":"timer"}},{"text":"s"},{text:" | Stage: "},{"storage":"w:temp",nbt:"state.stage"}]}
execute as @a[tag=!spectator] run function w:game/help/role

function w:game/help/clear

scoreboard players set alive online 0
scoreboard players operation alive online += @a[tag=!spectator] online
execute if score tick timer matches 0 run scoreboard players remove remaining timer 1