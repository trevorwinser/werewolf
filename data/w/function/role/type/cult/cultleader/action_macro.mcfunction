execute if score @s role_action matches 1 if entity @a[tag=acolyte,tag=!spectator] run tag @a[tag=acolyte,tag=!spectator] add controlled
$execute if score @s role_action matches 1 unless entity @a[tag=acolyte,tag=controlled] run tag @a[tag=player_$(target)] add cultkilled
execute store result score @a[tag=controlled] target1 run scoreboard players get @s target1
$tellraw @a[tag=controlled] [{text:"The Cult Leader commanded you to kill "},{selector:"@a[tag=player_$(target)]"}]
$execute if score @s role_action matches 2 run tag @a[tag=player_$(target)] add deceived
$execute if score @s role_action matches 2 run tellraw @s [{text:"You deceived "},{selector:"@a[tag=player_$(target)]"}]
tag @a remove controlled