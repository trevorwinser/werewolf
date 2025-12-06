execute if data storage w:temp state{time:"Night"} if score @s role_uses matches 1.. run scoreboard players set @s role_action 1
execute if data storage w:temp state{time:"Night"} if score @s role_uses matches 1.. run tellraw @s "You will heal yourself tonight"

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/lime_dye