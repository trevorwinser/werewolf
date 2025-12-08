tag @r[tag=town] add target
scoreboard players operation @s role_state = @n[tag=target] display
tellraw @s [{text:"Your target is "},{selector:"@n[tag=target]"}]