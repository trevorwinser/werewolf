scoreboard players set @s role_action 2
execute if data storage w:temp state{time:"Night"} run tellraw @s "You will ignite all doused players tonight"

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye