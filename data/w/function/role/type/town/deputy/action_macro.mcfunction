$tag @a[tag=player_$(target)] add investigate
data modify storage w:temp suspicious set value false

execute if entity @a[tag=neutral,tag=investigate,scores={role_action=1..}] run data modify storage w:temp suspicious set value true
execute if entity @a[tag=cult,tag=investigate,tag=!fallguy] run data modify storage w:temp suspicious set value true
execute if entity @a[tag=cult,tag=investigate,tag=fallguy] run data modify storage w:temp suspicious set value false

execute as @s[tag=deceived] if data storage w:temp {suspicious:true} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{italic:true,color:green,text:" has not done any suspicious activity tonight"}]
execute as @s[tag=deceived] if data storage w:temp {suspicious:false} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{italic:true,color:red,text:" has done some suspicious activity tonight"}]

execute as @s[tag=!deceived] if data storage w:temp {suspicious:true} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{italic:true,color:red,text:" has done some suspicious activity tonight"}]
execute as @s[tag=!deceived] if data storage w:temp {suspicious:false} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{italic:true,color:green,text:" has not done any suspicious activity tonight"}]
tag @a remove investigate