scoreboard players set remaining timer 15
bossbar set stage max 15
clear @a
tellraw @a [{selector:"@a[tag=trial]"},{text:" will be removed from the town\nThey have 15 seconds to say their final words"}]