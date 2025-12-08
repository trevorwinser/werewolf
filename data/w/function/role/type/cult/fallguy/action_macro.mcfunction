
$tag @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] add redirected
$execute as @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] store result score @s target1 run scoreboard players get @s display
$tag @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] add redirected
$execute as @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] store result score @s target2 run scoreboard players get @s display
execute as @a run tellraw @a[tag=fallguy,tag=!spectator] "You redirected an action onto yourself"
tellraw @a[tag=redirected] "Your action was directed towards the Fall Guy!"
tag @a remove redirected