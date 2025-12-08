scoreboard players set remaining timer 30
bossbar set stage max 30
execute as @a[tag=!spectator] run function w:role/menu/players_not_self1
scoreboard players set @a target1 0
scoreboard players set @a votes 0