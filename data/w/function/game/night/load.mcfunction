time set midnight

scoreboard players set 4 game 4
scoreboard players operation temp game = time game
scoreboard players operation temp game %= 4 game
execute if score temp game matches 0 run data modify storage w:temp state.moon set value "🌕"
execute if score temp game matches 1 run data modify storage w:temp state.moon set value "🌔"
execute if score temp game matches 2 run data modify storage w:temp state.moon set value "🌑"
execute if score temp game matches 3 run data modify storage w:temp state.moon set value "🌖"
scoreboard players reset temp game

clear @a
scoreboard players set remaining timer 45
bossbar set stage max 45
function w:game/help/home
function w:game/help/lock {block:"black_concrete"}
function w:game/help/unlock {block:"oak_planks"}
execute as @a run attribute @s jump_strength base set 0.42
function w:game/help/time

scoreboard players set @a menu 0
scoreboard players set @a target1 0
scoreboard players set @a target2 0
scoreboard players set @a role_action 0
execute as @a run function w:role/handle {path:"night"}