data modify storage w:temp temp.path set from entity @s SelectedItem.components."minecraft:custom_data"
execute store result storage w:temp temp.state int 1 run scoreboard players get @s role_state
function w:role/type/town/swapper/player_head_macro with storage w:temp temp