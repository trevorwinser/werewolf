tag @s add joined

tellraw @a [{text:"Welcome "},{selector:"@s"},{text:"!"}]

tp @s 0 1 0
spawnpoint @s 0 1 0

gamemode adventure @s

tag @s remove playing
tag @s remove lobby_reset

team leave @s

scoreboard players reset @s

scoreboard players set @s online 1


