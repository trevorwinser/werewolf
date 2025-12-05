execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_action 1
execute if data storage w:temp state{time:"Night"} run tellraw @s "You will douse this player tonight"

function w:role/type/generic/player_head