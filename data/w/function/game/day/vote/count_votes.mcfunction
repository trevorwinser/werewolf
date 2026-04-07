scoreboard players set @a[tag=!spectator] votes 0
execute as @a[tag=!spectator,scores={target1=1}] run scoreboard players add @a[tag=player_1] votes 1
execute as @a[tag=!spectator,scores={target1=2}] run scoreboard players add @a[tag=player_2] votes 1
execute as @a[tag=!spectator,scores={target1=3}] run scoreboard players add @a[tag=player_3] votes 1
execute as @a[tag=!spectator,scores={target1=4}] run scoreboard players add @a[tag=player_4] votes 1
execute as @a[tag=!spectator,scores={target1=5}] run scoreboard players add @a[tag=player_5] votes 1
execute as @a[tag=!spectator,scores={target1=6}] run scoreboard players add @a[tag=player_6] votes 1
execute as @a[tag=!spectator,scores={target1=7}] run scoreboard players add @a[tag=player_7] votes 1
execute as @a[tag=!spectator,scores={target1=8}] run scoreboard players add @a[tag=player_8] votes 1
execute as @a[tag=!spectator,scores={target1=9}] run scoreboard players add @a[tag=player_9] votes 1
execute as @a[tag=!spectator,scores={target1=10}] run scoreboard players add @a[tag=player_10] votes 1
execute as @a[tag=!spectator,scores={target1=11}] run scoreboard players add @a[tag=player_11] votes 1

execute as @a[team=mayor,tag=!spectator,scores={target1=1}] run scoreboard players add @a[tag=player_1] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=2}] run scoreboard players add @a[tag=player_2] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=3}] run scoreboard players add @a[tag=player_3] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=4}] run scoreboard players add @a[tag=player_4] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=5}] run scoreboard players add @a[tag=player_5] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=6}] run scoreboard players add @a[tag=player_6] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=7}] run scoreboard players add @a[tag=player_7] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=8}] run scoreboard players add @a[tag=player_8] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=9}] run scoreboard players add @a[tag=player_9] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=10}] run scoreboard players add @a[tag=player_10] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=11}] run scoreboard players add @a[tag=player_11] votes 1

execute as @a[team=mayor,tag=!spectator,scores={target1=1}] run scoreboard players add @a[tag=player_1] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=2}] run scoreboard players add @a[tag=player_2] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=3}] run scoreboard players add @a[tag=player_3] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=4}] run scoreboard players add @a[tag=player_4] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=5}] run scoreboard players add @a[tag=player_5] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=6}] run scoreboard players add @a[tag=player_6] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=7}] run scoreboard players add @a[tag=player_7] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=8}] run scoreboard players add @a[tag=player_8] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=9}] run scoreboard players add @a[tag=player_9] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=10}] run scoreboard players add @a[tag=player_10] votes 1
execute as @a[team=mayor,tag=!spectator,scores={target1=11}] run scoreboard players add @a[tag=player_11] votes 1

scoreboard players set .highest votes 0
scoreboard players set .total_highest votes 0
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
execute as @a[tag=!spectator] if score @s votes > .highest votes run scoreboard players operation .highest votes = @s votes
tellraw @a ""
execute as @a[tag=!spectator] if score @s votes = .highest votes unless score @s votes matches 0 run scoreboard players add .total_highest votes 1
execute if score .total_highest votes matches 1 run data modify storage w:temp state.stage set value "Judge"
execute if data storage w:temp state{stage:"Judge"} run function w:game/day/judge/load
execute if score .total_highest votes matches 0 run data modify storage w:temp state.stage set value "Tie"
execute if score .total_highest votes matches 2.. run data modify storage w:temp state.stage set value "Tie"
execute if score .total_highest votes matches 0 run tellraw @a "Nobody voted! No judgement will be made"
execute if score .total_highest votes matches 2.. run tellraw @a "There was a tie! No judgement will be made"
execute if data storage w:temp state{stage:"Tie"} run return run function w:game/state/update
