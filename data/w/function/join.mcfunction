tag @s add joined
execute if score start game matches 1 run tag @s add spectator

tellraw @a [{text:"Welcome "},{selector:"@s"},{text:"!"}]

tp @s 0 1 0
spawnpoint @s 0 1 0

gamemode adventure @s

tag @s remove playing
tag @s remove lobby_reset

team leave @s

scoreboard players reset @s

scoreboard players set @s online 1

attribute @s minecraft:jump_strength base set 0.42

execute if score start game matches 0 run function w:end/remove_roles/load