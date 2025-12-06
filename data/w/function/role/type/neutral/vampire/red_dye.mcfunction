execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to bite?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_tag1 {tag:"vampire"}

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye