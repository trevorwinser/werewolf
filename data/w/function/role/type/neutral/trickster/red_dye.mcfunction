execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_state 1
execute if data storage w:temp state{time:"Night"} run tellraw @s "Whose role would you like to learn?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_self1

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye