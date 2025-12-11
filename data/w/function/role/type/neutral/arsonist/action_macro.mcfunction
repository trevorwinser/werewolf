$tag @a[tag=player_$(target),tag=!invulnerable] add doused
execute if score @s role_action matches 0 run tag @s remove doused
execute if entity @s[tag=doused] as @a if score @s target1 = @s[tag=arsonist] display run tag @s add doused
$execute if entity @s[tag=doused] as @a if score @s target1 = @s[tag=arsonist] display run tellraw @a[tag=arsonist] [{color:gold,text:"[Douse] "},{color:white,text:"You doused "},{color:white,selector:"@a[tag=player_$(target),tag=doused]"},{color:white,text:" because they visited you last night"}]
$execute if entity @a[tag=player_$(target),tag=doused] run tellraw @s [{color:gold,text:"[Douse] "},{color:white,text:"You doused "},{color:white,selector:"@a[tag=player_$(target),tag=doused]"}]
$execute if entity @a[tag=player_$(target),tag=!doused] run tellraw @s [{color:gold,text:"[Douse] "},{color:white,text:"You could not douse "},{color:white,selector:"@a[tag=player_$(target)]"}]

execute if score @s role_action matches 2 run tag @a[tag=doused] add ignited
tellraw @a[tag=ignited] {color:red,text:"You were caught in the Arsonist's flames"}