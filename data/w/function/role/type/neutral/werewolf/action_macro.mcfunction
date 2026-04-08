$execute if score @s role_state matches 1 run tag @a[scores={target1=$(target)},tag=!werewolf,tag=!manipulator,tag=!swapper] add mauled
$tag @a[tag=player_$(target),tag=!werewolf] add mauled
execute if score @s role_action matches 1 run tellraw @a[tag=mauled] [{color:blue,text:"[Mauled] "},{color:white,text:"You were mauled last night"}]
execute if score @s role_action matches 2 if score @s role_state matches 1 run tellraw @a[tag=mauled] [{color:blue,text:"[Mauled] "},{color:white,text:"You were mauled visiting the werewolf last night"}]