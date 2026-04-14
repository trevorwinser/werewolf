execute unless entity @s[tag=spectator] run return 0
tag @s add me
execute as @a run function w:game/help/display_role
tag @s remove me