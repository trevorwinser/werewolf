execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_action 2
execute if data storage w:temp state{time:"Night"} run scoreboard players operation @s target1 = @s display 
execute if data storage w:temp state{time:"Night"} run tellraw @s "You chose to stay home tonight"

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye