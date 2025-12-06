scoreboard players set @s role_action 0
execute if data storage w:temp state{time:"Night"} run tellraw @s[tag=doused] "You will undouse yourself tonight"
execute if data storage w:temp state{time:"Night"} run tellraw @s[tag=!doused] "You are not doused! You will do nothing tonight"

execute if data storage w:temp state{stage:"Judge"} run function w:role/type/generic/gray_dye