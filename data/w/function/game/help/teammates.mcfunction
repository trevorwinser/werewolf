tag @s add me
$execute if entity @a[team=$(team),tag=!me] run tellraw @s [{text:"Your teammate(s) are: "},{selector:"@a[team=$(team),tag=!me]"}]
$execute unless entity @a[team=$(team),tag=!me] run tellraw @s "You have no teammates"
tag @s remove me