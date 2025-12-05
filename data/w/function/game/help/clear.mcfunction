execute at @e[tag=storage] run data modify block ~ ~ ~ Items set value []
execute as @e[type=item] run data modify entity @s PickupDelay set value 0s