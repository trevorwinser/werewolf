execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to douse?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_tag1 {tag:"doused"}

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye