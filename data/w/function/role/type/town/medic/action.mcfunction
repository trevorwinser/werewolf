execute if score @s role_action matches 1 run scoreboard players remove @s role_uses 1
execute store result storage w:temp target int 1 run scoreboard players get @s target1
function w:role/type/town/medic/action_macro with storage w:temp