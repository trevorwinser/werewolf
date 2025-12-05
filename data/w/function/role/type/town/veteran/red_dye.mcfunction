execute if data storage w:temp state{time:"Night"} run tellraw @s "You will be alert tonight"
execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_state 1

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye