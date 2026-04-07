tag @r[tag=town] add target
scoreboard players operation @s role_state = @n[tag=target] display
tellraw @s ""
tellraw @s [{color:white,text:"Your target is "},{color:red,selector:"@n[tag=target]"}]