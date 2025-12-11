scoreboard players set @s role_action 1
execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to manipulate?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_tag1 {tag:"cult"}

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye