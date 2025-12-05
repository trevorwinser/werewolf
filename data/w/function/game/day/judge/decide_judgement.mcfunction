scoreboard players set .total judgement 0
execute as @a run scoreboard players operation .total judgement += @s judgement
execute as @a[scores={judgement=1}] run tellraw @a [{selector:"@s"},{text:" voted ",color:white},{text:"Innocent",color:green}]
execute as @a[scores={judgement=1}] run tellraw @a [{selector:"@s"},{text:" voted ",color:white},{text:"Guilty",color:red}]