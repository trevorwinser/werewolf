data modify storage w:temp index set value 1000
execute if score @s index matches 0..10 store result storage w:temp index int 1 run scoreboard players get @s index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
function w:game/help/role_actionbar_macro with storage w:temp temp_role