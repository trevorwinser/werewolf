$scoreboard players add $(name) active_roles 1
$tag @s add $(name)
$tag @s add $(type)
$tag @s add $(subtype)
$tellraw @s "You are now the $(display)"
$tellraw @s "Abilties:\n$(abilities)\nAttributes:\n$(attributes)\nGoal:\n$(goal)"

title @s title ""
$title @s subtitle "You are now the $(display)"