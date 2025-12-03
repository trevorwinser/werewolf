execute store result bossbar stage value run scoreboard players get remaining timer
execute if score remaining timer matches ..0 run function w:game/state/update

bossbar set stage name {"text": "","extra": [{"storage":"w:temp", "nbt":"state.time"},{"text":" "},{"score":{"name":"night","objective":"game"}},{"text":" "},{"storage":"w:temp", "nbt":"state.count"},{"text":" | Time Remaining: "},{"score":{"name":"remaining","objective":"timer"}},{"text":"s"}]}
title @a actionbar {text:"Stage: ",extra:[{storage:"w:temp",nbt:"state.stage"}]}
gamemode spectator @a[tag=spectator]
execute if score tick timer matches 0 run scoreboard players remove remaining timer 1

function w:game/help/clear