$tag @a[scores={target1=$(target)},tag=!manipulator,tag=!swapper,tag=!fallguy] add redirected
$tag @a[scores={target2=$(target)},tag=!manipulator,tag=!swapper,tag=!fallguy] add redirected
scoreboard players operation @a[tag=redirected] target1 = @s display
scoreboard players operation @a[tag=redirected] target2 = @s display
execute as @a[tag=redirected] run tellraw @p[tag=fallguy,tag=!spectator] [{color:"red",text:"[Fall] "},{color:white,text:"You redirected an action onto yourself"}]
tellraw @a[tag=redirected] [{color:"red",text:"[Fall] "},{color:white,text:"Your action was directed towards the Fall Guy!"}]
tag @a remove redirected
data modify storage w:temp success set value true