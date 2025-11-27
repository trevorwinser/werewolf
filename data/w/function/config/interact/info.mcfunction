$execute at @s run tellraw @p {text:"$(info)"}
data remove entity @s attack
execute at @s run function w:sound/play_local {sound:"minecraft:entity.experience_orb.pickup",volume:1,pitch:1}