scoreboard players set @s role_state 1
execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to swap?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players1

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye