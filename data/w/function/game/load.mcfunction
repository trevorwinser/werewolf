summon marker 500 1 45 {Tags:["1"]}
summon marker 476 3 38 {Tags:["2"]}
summon marker 459 6 19 {Tags:["3"]}
summon marker 455 8 -6 {Tags:["4"]}
summon marker 466 7 -30 {Tags:["5"]}
summon marker 487 7 -43 {Tags:["6"]}
summon marker 509 5 -44 {Tags:["7"]}
summon marker 533 3 -31 {Tags:["8"]}
summon marker 544 3 -8 {Tags:["9"]}
summon marker 542 1 16 {Tags:["10"]}
summon marker 527 1 36 {Tags:["11"]}

tellraw @a ""
tellraw @a "Active Roles:"
function w:help/for_loop/start {command:"function w:game/help/list_role with storage w:temp for_loop",start:0,step:1,end:10}
# Give each player a unique ID
scoreboard objectives add display dummy "Player"
scoreboard players set @a display 0
scoreboard players operation temp display = total online
execute as @a run function w:game/help/count
scoreboard players reset temp display
scoreboard objectives modify display numberformat styled {color:aqua,bold:true}
scoreboard objectives setdisplay list display

tag @a[scores={display=1}] add player_1
tag @a[scores={display=2}] add player_2
tag @a[scores={display=3}] add player_3
tag @a[scores={display=4}] add player_4
tag @a[scores={display=5}] add player_5
tag @a[scores={display=6}] add player_6
tag @a[scores={display=7}] add player_7
tag @a[scores={display=8}] add player_8
tag @a[scores={display=9}] add player_9
tag @a[scores={display=10}] add player_10
tag @a[scores={display=11}] add player_11

#execute as @a run function w:game/role/load

scoreboard objectives add role_uses dummy
scoreboard players set @a role_uses 0
scoreboard players set @a[tag=veteran] role_uses 3
scoreboard players set @a[tag=deflector] role_uses 3
scoreboard players set @a[tag=medic] role_uses 1
scoreboard players set @a[tag=survivor] role_uses 2

scoreboard objectives add role_action dummy
scoreboard players set @a role_action 0

scoreboard objectives add role_state dummy
scoreboard players set @a role_state 0
scoreboard players set @a[tag=fallguy] role_state 50


scoreboard objectives add menu dummy
scoreboard players set @a menu 0

scoreboard objectives add target1 dummy
scoreboard players set @a target1 0
scoreboard objectives add target2 dummy
scoreboard players set @a target2 0


scoreboard objectives add votes dummy "Votes"
scoreboard objectives add judgement dummy "judgement"

scoreboard objectives add roles trigger

scoreboard players set time game 0

bossbar add stage ""
data modify storage w:temp state set value {time:"Day",stage:"Greet the Town",moon:""}
bossbar set minecraft:stage visible true
bossbar set minecraft:stage players @a
bossbar set minecraft:stage color yellow
bossbar set stage max 15

function w:game/help/storage

function w:timer
scoreboard players set remaining timer 15


team add mayor "Mayor"
team modify mayor color green
team modify mayor prefix "Mayor "

team add spectator
team modify spectator color gray

team add cult {text:"The Cult",color:light_purple}

team join cult @a[tag=cult]
execute store result score temp storage run team list cult
execute if score temp storage matches 2.. run tellraw @a[team=cult] "You are part of the cult! Use /teammsg to message your fellow cult members"

team add vampire {color:red,text:"Brood"}

team join vampire @a[tag=vampire]

execute unless entity @a[tag=!spectator,tag=vampire,tag=youngest] run tag @r[tag=!spectator,tag=vampire] add youngest

execute as @a[tag=cult] run function w:game/help/teammates {team:"cult"}

execute as @a[tag=executioner] run function w:game/help/target

effect clear @a

function w:game/help/home
function w:game/day/load

title @a subtitle "Greet the Town"
tellraw @a ""
tellraw @a "Night 1 will begin in 15 seconds"

scoreboard players set start game 1