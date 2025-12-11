data remove storage w:temp temp
data modify storage w:temp temp.id set from entity @s SelectedItem.components."minecraft:custom_data".id
scoreboard players operation @s role_state = @s role_action
execute store result storage w:temp temp.state int 1 run scoreboard players get @s role_state
function w:role/type/cult/manipulator/player_head_macro with storage w:temp temp