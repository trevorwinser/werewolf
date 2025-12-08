
$tag @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] add deflected
$tag @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] add deflected
$execute as @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] store result score @s target1 run scoreboard players get @s display
$execute as @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] store result score @s target2 run scoreboard players get @s display
scoreboard players remove @s role_uses 1