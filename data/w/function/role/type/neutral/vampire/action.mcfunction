
scoreboard players set temp storage 0
scoreboard players operation temp storage += @a[tag=vampire] target1
execute if score temp storage matches 0 run tellraw @a[tag=vampire] "Nobody voted on a target! Choosing a random player"
execute if score temp storage matches 0 run tag @r[tag=!vampire,tag=!spectator] add bit
execute unless score temp storage matches 0 as @r[tag=vampire,tag=!spectator,scores={target1=1..}] store result storage w:temp target int 1 run scoreboard players get @s target1
execute unless score temp storage matches 0 run function w:role/type/neutral/vampire/action_macro with storage w:temp
tellraw @a[tag=vampire,tag=!spectator] [{selector:"@s"},{text:" bit "},{selector:"@a[tag=bit]"}]
