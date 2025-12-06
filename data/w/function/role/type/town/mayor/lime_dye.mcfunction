execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_action 1
execute if data storage w:temp state{time:"Night"} run tellraw @s "You will reveal your role tomorrow!"

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye