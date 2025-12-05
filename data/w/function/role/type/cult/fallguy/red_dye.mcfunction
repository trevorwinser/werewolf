execute if data storage w:temp state{time:"Night"} run tellraw @s "Who do you want to take the fall for?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_self_only_tag1 {tag:"cult"}

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye