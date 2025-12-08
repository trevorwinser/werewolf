tag @s add me
execute if entity @a[tag=cult,tag=!me] run tellraw @s [{text:"Your teammate(s) are: "},{selector:"@a[tag=cult,tag=!me]"}]
execute unless entity @a[tag=cult,tag=!me] run tellraw @s "You have no teammates"
tag @s remove me