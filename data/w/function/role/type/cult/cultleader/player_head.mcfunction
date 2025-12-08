data modify storage w:temp temp.id set from entity @s SelectedItem.components."minecraft:custom_data".id
execute if data storage w:temp state{time:"Night"} run scoreboard players operation @s role_state = @s role_action
execute if data storage w:temp state{time:"Night"} if score @s role_state matches 1 if entity @a[tag=acolyte,tag=!spectator] run tellraw @s "Your Acolyte will kill this player tonight"
execute if data storage w:temp state{time:"Night"} if score @s role_state matches 2 run tellraw @s "You will deceive this player tonight"
function w:role/type/generic/player_head_macro with storage w:temp temp