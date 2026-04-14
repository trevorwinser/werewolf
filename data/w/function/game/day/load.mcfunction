time set 0
time rate 6
clear @a
function w:game/help/lock {block:"glowstone"}
function w:game/help/lock {block:"air"}
function w:game/help/unlock {block:"redstone_torch"}
function w:ui/remove_right_click
data modify storage w:temp state.time set value "Day"
function w:sound/play_all {sound:"minecraft:block.bell.use",volume:1,pitch:1}
function w:game/help/time with storage w:temp state
bossbar set minecraft:stage color yellow
