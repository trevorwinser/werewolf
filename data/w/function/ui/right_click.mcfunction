schedule function w:ui/remove_right_click 1s
execute if data entity @s SelectedItem run function w:sound/play_one {sound:"minecraft:block.note_block.bass",volume:1,pitch:1}
data modify storage w:temp input.path set string entity @s SelectedItem.id 10
execute if data entity @s SelectedItem run function w:role/handle with storage w:temp input