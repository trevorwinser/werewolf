execute if score @s role_state matches 1 run scoreboard players set @s role_action 1
function w:role/type/generic/player_head_macro with entity @s SelectedItem.components."minecraft:custom_data"