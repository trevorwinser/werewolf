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

# Give each player a unique ID
scoreboard objectives add display dummy "Players"
scoreboard players set @a display 1
scoreboard players add @r[scores={display=1}] display 1
scoreboard players add @r[scores={display=1}] display 2
scoreboard players add @r[scores={display=1}] display 3
scoreboard players add @r[scores={display=1}] display 4
scoreboard players add @r[scores={display=1}] display 5
scoreboard players add @r[scores={display=1}] display 6
scoreboard players add @r[scores={display=1}] display 7
scoreboard players add @r[scores={display=1}] display 8
scoreboard players add @r[scores={display=1}] display 9
scoreboard players add @r[scores={display=1}] display 10

tag @a[scores={display=1}] add 1
tag @a[scores={display=2}] add 2
tag @a[scores={display=3}] add 3
tag @a[scores={display=4}] add 4
tag @a[scores={display=5}] add 5
tag @a[scores={display=6}] add 6
tag @a[scores={display=7}] add 7
tag @a[scores={display=8}] add 8
tag @a[scores={display=9}] add 9
tag @a[scores={display=10}] add 10
tag @a[scores={display=11}] add 11

scoreboard objectives setdisplay sidebar display
scoreboard objectives setdisplay list display

scoreboard players set day game 0
scoreboard players set night game 0

scoreboard objectives add votes dummy "Votes"
scoreboard objectives add judgement dummy "Judgement"

bossbar add stage ""
data modify storage w:temp state set value {time:"Day",stage:"Greet the Town"}
bossbar set minecraft:stage visible true
bossbar set minecraft:stage players @a
bossbar set minecraft:stage color green
bossbar set stage max 15

function w:game/help/storage

function w:timer
scoreboard players set remaining timer 15

team add spectator
team modify spectator color gray

team add cult

team join cult @a[tag=cultleader]
team join cult @a[tag=acolyte]
team join cult @a[tag=initiate]
team join cult @a[tag=manipulator]
team join cult @a[tag=fallguy]

tellraw @a[team=cult] "You are part of the cult! Use /teammsg to message your fellow cult members"


function w:game/help/home
function w:game/day/load

title @a subtitle "Greet the Town"
tellraw @a "Night 1 will begin in 15 seconds"

scoreboard players set start game 1