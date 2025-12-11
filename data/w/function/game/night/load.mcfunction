execute if score .total judgement matches ..-1 as @a[tag=trial] run function w:game/help/die {reason:"was voted out of the town"}
tag @a remove trial
scoreboard players set .total judgement 0
scoreboard objectives setdisplay sidebar

execute as @a[tag=!spectator,tag=shameleave] if entity @a[tag=sheriffkilled,tag=town] run function w:game/help/die {reason:"left the town out of shame"}
tag @a remove sheriffkilled
tag @a remove shameleave
tag @a[tag=!spectator,tag=bit] add can_convert
function w:game/help/convert_process
execute as @a[tag=vampirehunter,tag=!spectator] unless entity @a[tag=vampire,tag=!spectator] run function w:game/help/convert_to {role:"chef"}
execute unless entity @a[tag=sheriff,tag=!spectator] run tag @a[tag=deputy,tag=!spectator] add can_convert

execute if function w:game/help/win_check run schedule function w:end/load 1t

function w:ui/remove_right_click

scoreboard players set 4 game 4
scoreboard players operation temp game = time game
scoreboard players operation temp game %= 4 game

execute if score temp game matches 0 run data modify storage w:temp state.moon set value "🌖"
execute if score temp game matches 0 run time set 66000
execute if score temp game matches 1 run data modify storage w:temp state.moon set value "🌕"
execute if score temp game matches 1 run time set 114000
execute if score temp game matches 2 run data modify storage w:temp state.moon set value "🌔"
execute if score temp game matches 2 run time set 164000
execute if score temp game matches 3 run data modify storage w:temp state.moon set value "🌑"
execute if score temp game matches 3 run time set midnight
function w:game/help/time
execute if score temp game matches 3 if entity @a[tag=werewolf,tag=!spectator] run tellraw @a "A full moon is out, beware of the Werewolf"
execute if score temp game matches 3 if entity @a[tag=werewolf,tag=!spectator] run function w:sound/play_all {sound:"minecraft:entity.wolf.ambient",volume:1,pitch:0.1}
execute if score temp game matches 3 unless entity @a[tag=werewolf,tag=!spectator] run function w:sound/play_all {sound:"minecraft:entity.breeze.idle_ground",volume:1,pitch:0.1}
execute unless score temp game matches 3 unless entity @a[tag=werewolf,tag=!spectator] run function w:sound/play_all {sound:"minecraft:entity.breeze.idle_ground",volume:1,pitch:0.1}
scoreboard players reset temp game

bossbar set minecraft:stage color blue
clear @a
scoreboard players set remaining timer 60
bossbar set stage max 60
function w:game/help/home
function w:game/help/lock {block:"black_concrete"}
function w:game/help/unlock {block:"oak_planks"}
execute as @a run attribute @s jump_strength base set 0.42

scoreboard players set @a menu 0
scoreboard players set @a target1 0
scoreboard players set @a target2 0
scoreboard players set @a role_action 0
execute as @a[tag=!spectator] run function w:role/handle {path:"night"}