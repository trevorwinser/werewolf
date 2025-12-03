time set midnight
clear @a
scoreboard players set remaining timer 60
bossbar set stage max 60
function w:game/help/home
function w:game/help/lock {block:"barrier"}
function w:game/help/unlock {block:"oak_planks"}
execute as @a run attribute @s jump_strength base set 0.42
data modify storage w:temp state.time set value "Night"

function w:game/help/time