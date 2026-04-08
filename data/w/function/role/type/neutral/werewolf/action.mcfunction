execute if score @s role_state matches 1 if score @s target1 matches 0 run scoreboard players set @s role_action 2
execute if score @s role_state matches 1 if score @s target1 matches 0 run scoreboard players operation @s target1 = @s display
execute store result storage w:temp target int 1 run scoreboard players get @s target1
execute if score @s role_action matches 1.. run function w:role/type/neutral/werewolf/action_macro with storage w:temp