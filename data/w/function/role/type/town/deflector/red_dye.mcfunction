execute if data storage w:temp state{time:"Night"} run tellraw @s "You will deflect everyone who acts on you tonight"
execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_action 1

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/red_dye