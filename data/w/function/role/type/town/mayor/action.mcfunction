execute if score @s role_action matches 1 run tellraw @a [{selector:"@s"},{text:" has revealed themself as the Mayor"}]
execute if score @s role_action matches 1 run team join mayor @s