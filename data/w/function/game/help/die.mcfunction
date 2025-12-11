$tellraw @a [{selector:"@s"},{text:" $(reason)"}]
execute store result storage w:temp index int 1 run scoreboard players get @s index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
function w:game/help/remove_active with storage w:temp
execute as @s[tag=!spectator] run tellraw @a [{text:"Their role was the "},{"storage":"w:temp", "nbt":"temp_role.display"}]
$data modify storage w:temp reason set value "$(reason)"
execute as @s[tag=jester] if data storage w:temp {reason:"was voted out of the town"} run tag @s add won
execute as @s[tag=jester] if data storage w:temp {reason:"was voted out of the town"} run schedule function w:end/load 1t
execute as @s if data storage w:temp {reason:"was voted out of the town"} if entity @a[tag=executioner,tag=!spectator] as @s if score @s display = @n[tag=executioner,tag=!spectator] role_state run tag @n[tag=executioner,tag=!spectator] add won
execute as @s if data storage w:temp {reason:"was voted out of the town"} as @a[tag=executioner,tag=won,tag=!spectator] run tellraw @a [{selector:"@s"},{text:" voted out their target"}]
execute as @s if data storage w:temp {reason:"was voted out of the town"} as @a[tag=executioner,tag=won,tag=!spectator] run function w:game/help/die {reason:"left the town"}
execute as @s[tag=target] unless data storage w:temp {reason:"was voted out of the town"} run tag @a[tag=executioner,tag=!spectator] add can_convert
scoreboard players reset @s display
execute as @s[tag=ignited] run function w:sound/play_one {sound:"minecraft:entity.player.hurt_on_fire",volume:1,pitch:1}
execute as @s[tag=cultkilled] run function w:sound/play_one {sound:"minecraft:entity.player.death",volume:1,pitch:1}
execute as @s[tag=sheriffkilled] run function w:sound/play_one {sound:"minecraft:entity.player.death",volume:1,pitch:1}
execute as @s[tag=veterankilled] run function w:sound/play_one {sound:"minecraft:entity.player.death",volume:1,pitch:1}
execute as @s[tag=serialkilled] run function w:sound/play_one {sound:"minecraft:entity.player.death",volume:1,pitch:1}
execute as @s[tag=mauled] run function w:sound/play_one {sound:"minecraft:entity.wolf_angry.ambient",volume:1,pitch:0.1}
execute as @s[tag=bit] run function w:sound/play_one {sound:"minecraft:entity.player.death",volume:1,pitch:1.3}
tag @s add spectator