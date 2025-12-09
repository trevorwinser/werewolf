scoreboard players set .total judgement 0
execute as @a run scoreboard players operation .total judgement += @s judgement
execute as @a[team=mayor] run scoreboard players operation .total judgement += @s judgement
execute as @a[team=mayor] run scoreboard players operation .total judgement += @s judgement
execute as @a[tag=!trial,tag=!spectator,scores={judgement=1}] run tellraw @a [{selector:"@s"},{text:" voted ",color:white},{text:"Innocent",color:green}]
execute as @a[tag=!trial,tag=!spectator,scores={judgement=0}] run tellraw @a [{selector:"@s"},{text:" Abstained",color:gray}]
execute as @a[tag=!trial,tag=!spectator,scores={judgement=-1}] run tellraw @a [{selector:"@s"},{text:" voted ",color:white},{text:"Guilty",color:red}]
execute if score .total judgement matches 0.. run tellraw @a [{selector:"@a[tag=trial]"},{text:" will not be removed from the town today"}]
execute if score .total judgement matches 0.. run tag @a[tag=trial] remove trial
execute if score .total judgement matches 0.. run data modify storage w:temp state.time set value "Night"
execute if score .total judgement matches 0.. run return run function w:game/state/update

execute if score .total judgement matches ..-1 run data modify storage w:temp state.stage set value "Last Words"
execute if score .total judgement matches ..-1 run function w:game/day/lastwords/load