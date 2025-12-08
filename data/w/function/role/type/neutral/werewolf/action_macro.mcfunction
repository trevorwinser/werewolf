$tag @a[scores={target1=$(target)},tag=!werewolf,tag=!manipulator,tag=!swapper] add mauled
$tag @a[tag=player_$(target),tag=!werewolf] add mauled
execute if score @s role_action matches 2 run tellraw @a[tag=mauled] "You were mauled visiting the werewolf last night"
execute if score @s role_action matches 1 run tellraw @a[tag=mauled] "You were mauled last night"