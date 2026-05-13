data modify storage w:temp index set value 1000
$execute store result storage w:temp index int 1 run scoreboard players get @n[tag=player_$(target)] index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
$data modify storage w:temp temp_role.target set value $(target)
function w:role/type/neutral/trickster/action_macro2 with storage w:temp temp_role