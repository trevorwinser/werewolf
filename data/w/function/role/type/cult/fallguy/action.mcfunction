execute if score @s target1 matches 0 run tag @r[tag=cult,tag=!fallguy,tag=!spectator] add random
execute if entity @a[tag=random] if score @s target1 matches 0 run tellraw @s [{text:"You forgot to choose a target! You randomly picked "},{selector:"@a[tag=random]"}]
execute if score @s target1 matches 0 store result score @s target1 run scoreboard players get @p[tag=random] display
execute if entity @a[tag=random] run data modify storage w:temp success set value false
execute store result storage w:temp target int 1 run scoreboard players get @s target1
execute if entity @a[tag=cult,tag=!fallguy,tag=!spectator] if score @s role_state matches 25 if predicate w:25in100 run function w:role/type/cult/fallguy/action_macro with storage w:temp
execute if entity @a[tag=cult,tag=!fallguy,tag=!spectator] if score @s role_state matches 50 if predicate w:50in100 run function w:role/type/cult/fallguy/action_macro with storage w:temp
execute if entity @a[tag=cult,tag=!fallguy,tag=!spectator] if score @s role_state matches 75 if predicate w:75in100 run function w:role/type/cult/fallguy/action_macro with storage w:temp
execute if entity @a[tag=cult,tag=!fallguy,tag=!spectator] if score @s role_state matches 100 run function w:role/type/cult/fallguy/action_macro with storage w:temp
execute if data storage w:temp {success:true} run scoreboard players remove @s role_state 25
execute if data storage w:temp {success:false} if score @s role_state matches ..75 run scoreboard players add @s role_state 25

execute if entity @a[tag=random] if data storage w:temp {success:false} run tellraw @s [{color:"red",text:"[Fall] "},{color:white,text:"You failed in taking the fall +25%"}]
tag @a remove random