scoreboard players set remaining timer 15
bossbar set stage max 15
scoreboard players set @a judgement 0
execute as @a[tag=!spectator] if score @s votes = .highest votes run function w:game/day/judge/trial
execute as @a[tag=!spectator] run function w:role/menu/judgement
scoreboard players reset .highest
scoreboard players reset .total_highest
scoreboard objectives setdisplay sidebar votes