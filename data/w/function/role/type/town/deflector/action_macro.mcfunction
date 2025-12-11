
$tag @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] add deflected
$tag @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] add deflected
$execute as @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper] store result score @s target1 run scoreboard players get @s display
$execute as @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper] store result score @s target2 run scoreboard players get @s display
scoreboard players remove @s role_uses 1
tellraw @a[tag=deflected] [{color:green,text:"[Deflected]"},{color:white,text:" Your action was deflected back onto you!"}]
execute as @a[tag=deflected] run tellraw @a[tag=deflector] [{color:green,text:"[Deflected]"},{color:white,text:" You deflected an action"}]

tag @a remove deflected