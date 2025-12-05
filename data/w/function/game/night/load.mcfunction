# TODO: Write Werewolf moon logic
time set midnight
clear @a
scoreboard players set remaining timer 45
bossbar set stage max 45
function w:game/help/home
function w:game/help/lock {block:"black_concrete"}
function w:game/help/unlock {block:"oak_planks"}
execute as @a run attribute @s jump_strength base set 0.42
function w:game/help/time

scoreboard players set @a menu 0
scoreboard players set @a target1 0
scoreboard players set @a target2 0
scoreboard players set @a role_action 0
execute as @a run function w:role/handle {path:"night"}