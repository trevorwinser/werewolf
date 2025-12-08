data modify storage w:temp success set value false
execute store result storage w:temp target int 1 run scoreboard players get @s target1
execute if score @s role_state matches 25 if predicate w:25in100 run function w:role/type/town/fallguy/action_macro with storage w:temp
execute if score @s role_state matches 50 if predicate w:50in100 run function w:role/type/town/fallguy/action_macro with storage w:temp
execute if score @s role_state matches 75 if predicate w:75in100 run function w:role/type/town/fallguy/action_macro with storage w:temp
execute if score @s role_state matches 100 run function w:role/type/town/fallguy/action_macro with storage w:temp
execute if data storage w:temp {success:true} run scoreboard players remove @s role_state 25
execute if data storage w:temp {success:false} run scoreboard players add @s role_state 25

execute if data storage w:temp {success:false} run tellraw @s [{text:"You failed in taking the fall"}]