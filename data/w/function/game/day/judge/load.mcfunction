scoreboard players set remaining timer 15
bossbar set stage max 15
scoreboard players set @a judgement 0

execute as @a[tag=!spectator] if score @s votes = .highest votes run function w:game/day/judge/trial