execute unless entity @a[tag=manipulator,tag=!spectator] run tellraw @s "You may become the new Manipulator tomorrow" 
execute unless entity @a[tag=fallguy,tag=!spectator] run tellraw @s "You may become the new Fall Guy tomorrow"

execute unless entity @a[tag=manipulator,tag=!spectator] run tag @s add can_convert
execute unless entity @a[tag=fallguy,tag=!spectator] run tag @s add can_convert