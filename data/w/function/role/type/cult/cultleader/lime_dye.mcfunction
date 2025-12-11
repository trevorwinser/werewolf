scoreboard players set @s role_state 2
execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to deceive?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_self_only_tag {tag:"investigative"}

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye