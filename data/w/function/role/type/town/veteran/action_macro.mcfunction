$say $(target)
$tag @a[scores={target1=$(target)},tag=!werewolf,tag=!manipulator,tag=!swapper] add veterankilled
$tag @a[scores={target1=$(target)},tag=vampire,tag=!youngest] remove veterankilled
tag @s remove cultkilled
tag @s remove sheriffkilled
tag @s remove veterankilled
execute unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tag @s remove serialkilled
scoreboard players remove @s role_uses 1