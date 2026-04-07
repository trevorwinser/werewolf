scoreboard players set remaining timer 60
bossbar set stage max 60
function w:game/day/load
function w:game/help/action_process
function w:game/help/status_process
execute as @a[tag=executioner] if entity @a[tag=town,tag=spectator,tag=target] run function w:game/help/convert_to {role:"jester"}