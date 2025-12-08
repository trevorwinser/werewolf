time set noon
clear @a
function w:game/help/lock {block:"glowstone"}
function w:game/help/lock {block:"air"}
function w:game/help/unlock {block:"redstone_torch"}
bossbar set minecraft:stage color green

execute as @a[tag=assigned] run attribute @s minecraft:jump_strength base set 0
data modify storage w:temp state.time set value "Day"

function w:game/help/time