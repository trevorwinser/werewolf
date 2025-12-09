$tag @a[tag=player_$(target)] add doused
execute if score @s role_action matches 0 run tag @s remove doused
execute if entity @s[tag=doused] as @a if score @s target1 = @s[tag=arsonist] display run tag @s add doused

execute if score @s role_action matches 2 run tag @a[tag=doused] add ignited
tellraw @a[tag=ignited] {color:red,text:"You were caught in the Arsonist's flames"}