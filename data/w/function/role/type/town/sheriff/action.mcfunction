execute store result storage w:temp target int 1 run scoreboard players get @s target1
execute if score @s role_action matches 1 run function w:role/type/town/sheriff/action_macro with storage w:temp