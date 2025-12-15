execute if score @s role_action matches 1 if entity @a[tag=acolyte,tag=!spectator] run tag @a[tag=acolyte,tag=!spectator] add controlled
$execute if score @s role_action matches 1 unless entity @a[tag=acolyte,tag=controlled] run tag @a[tag=player_$(target)] add cultkilled
$execute if score @s role_action matches 1 if entity @a[tag=controlled] run tellraw @a[tag=cult,tag=!spectator] [{selector:"@s"},{color:white,text:" controlled "},{color:white,selector:"@a[tag=controlled]"},{color:white,text:" to kill "},{selector:"@a[tag=player_$(target)]"}]
$execute if score @s role_action matches 1 unless entity @a[tag=controlled] run tellraw @a[tag=cult,tag=!spectator] [{selector:"@s"},{color:white,text:" attempted to kill "},{selector:"@a[tag=player_$(target)]"}]
scoreboard players operation @n[tag=controlled] target1 = @s target1
scoreboard players set @n[tag=controlled] role_action 1
execute if entity @a[tag=controlled] run scoreboard players set @s target1 0
$tellraw @a[tag=controlled] [{text:"The Cult Leader commanded you to kill "},{selector:"@a[tag=player_$(target)]"}]
$execute if score @s role_action matches 2 run tag @a[tag=player_$(target)] add deceived
execute if score @s role_action matches 2 run tellraw @a[tag=cult,tag=!spectator] [{selector:"@s"},{color:white,text:" attempted to deceive "},{selector:"@a[tag=deceived]"}]
execute if score @s role_action matches 2 if entity @a[tag=investigative,tag=deceived] run tellraw @s [{color:red,text:"[Deceived] "},{color:white,text:"You deceived "},{color:white,selector:"@a[tag=deceived]"}]
execute if score @s role_action matches 2 if entity @a[tag=!investigative,tag=deceived] run tellraw @s [{color:red,text:"[Deceived] "},{color:white,text:"You could not deceive "},{color:white,selector:"@a[tag=deceived]"}]
tag @a remove controlled
