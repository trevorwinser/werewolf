execute if data storage w:temp state{time:"Night"} run tellraw @s "Who do you want to visit?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_self1

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye