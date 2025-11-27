$$(command)
$execute as @s at @s run function w:sound/play_local {sound:"$(sound)",volume:1,pitch:1}

#execute as @a run function hs:reset/attribute
execute as @e[nbt={data:{type:"value"}}] run function w:config/update_value with entity @s data

execute as @e[nbt={data:{type:"switch"}}] run function w:config/update_size with entity @s data
execute as @e[nbt={data:{type:"toggle"}}] run function w:config/update_size with entity @s data
execute as @e[nbt={data:{type:"toggle"}}] run function w:config/update_color with entity @s data
data remove entity @s interaction