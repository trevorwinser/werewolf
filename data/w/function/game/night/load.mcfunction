execute if score .total judgement matches ..-1 as @a[tag=trial] run function w:game/help/die {reason:"was voted out of the town"}
tag @a remove trial
scoreboard players set .total judgement 0

execute as @a[tag=!spectator,tag=shameleave] if entity @a[tag=!healed,tag=sheriffkilled,tag=town] run function w:game/help/die {reason:"left the town out of shame"}
tag @a remove sheriffkilled
tag @a remove shameleave

function w:game/help/convert_process

execute if function w:game/help/win_check run schedule function w:end/load 1t
time set midnight

function w:role/update_roles

scoreboard players set 4 game 4
scoreboard players operation temp game = time game
scoreboard players operation temp game %= 4 game
execute if score temp game matches 0 run data modify storage w:temp state.moon set value "🌖"
execute if score temp game matches 1 run data modify storage w:temp state.moon set value "🌕"
execute if score temp game matches 2 run data modify storage w:temp state.moon set value "🌔"
execute if score temp game matches 3 run data modify storage w:temp state.moon set value "🌑"
scoreboard players reset temp game

clear @a
scoreboard players set remaining timer 60
bossbar set stage max 60
function w:game/help/home
function w:game/help/lock {block:"black_concrete"}
function w:game/help/unlock {block:"oak_planks"}
execute as @a run attribute @s jump_strength base set 0.42
function w:game/help/time

scoreboard players set @a menu 0
scoreboard players set @a target1 0
scoreboard players set @a target2 0
scoreboard players set @a role_action 0
execute as @a[tag=!spectator] run function w:role/handle {path:"night"}