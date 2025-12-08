data modify storage w:temp temp.id set from entity @s SelectedItem.components."minecraft:custom_data".id
execute store result storage w:temp temp.state int 1 run scoreboard players get @s role_action
function w:role/type/town/swapper/player_head_macro with storage w:temp temp
function w:role/type/town/swapper/back
execute if score @s menu matches 1 run function w:role/type/town/swapper/back