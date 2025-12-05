$scoreboard players add $(name) active_roles 1
$tag @s add $(name)
tag @s add assigned
$tellraw @s "You are the $(display)"
$tellraw @s "Abilties:\n$(abilities)\nAttributes:\n$(attributes)\nGoal:\n$(goal)"

title @s title ""
$title @s subtitle "You are the $(display)"