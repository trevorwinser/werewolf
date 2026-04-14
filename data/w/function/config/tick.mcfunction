execute as @e[type=interaction] if data entity @s interaction if entity @s[nbt={data:{type:"toggle"}}] run function w:config/interact/toggle with entity @s data
execute as @e[type=interaction] if data entity @s interaction if entity @s[nbt={data:{type:"switch"}}] run function w:config/interact/switch with entity @s data
execute as @e[type=interaction] if data entity @s interaction if data entity @s data.operation run function w:config/interact/operation with entity @s data
execute as @e[type=interaction] if data entity @s interaction if entity @s[nbt={data:{type:"button"}}] run function w:config/interact/press with entity @s data
execute as @e[type=interaction] if data entity @s interaction if entity @s[nbt={data:{type:"display_button"}}] run function w:config/interact/press with entity @s data

execute as @e[type=interaction] if data entity @s attack if data entity @s data.info run function w:config/interact/info with entity @s data


execute as @e[nbt={data:{operation:"add"}}] run function w:config/update/value with entity @s data
execute as @e[nbt={data:{type:"toggle"}}] run function w:config/update/size with entity @s data
execute as @e[nbt={data:{type:"toggle"}}] run function w:config/update/color with entity @s data
execute as @e[nbt={data:{type:"switch"}}] run function w:config/update/switch with entity @s data
#execute as @e[type=interaction] if data entity @s interaction run tellraw @a "ERROR: Unhandled Interaction"
execute as @e[type=interaction] run data remove entity @s interaction