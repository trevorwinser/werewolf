data modify storage w:temp temp.id set from entity @s SelectedItem.components."minecraft:custom_data".id
execute if data storage w:temp state{time:"Night"} run scoreboard players operation @s role_action = @s role_state
execute if data storage w:temp state{time:"Night"} if score @s role_action matches 1 unless entity @a[tag=cultleader,tag=!spectator] run tellraw @s "You will kill this player tonight"
execute if data storage w:temp state{time:"Night"} if score @s role_action matches 1 if entity @a[tag=cultleader,tag=!spectator] run tellraw @s "You will kill this player tonight unless the Cult Leader demands otherwise"
function w:role/type/generic/player_head_macro with storage w:temp temp