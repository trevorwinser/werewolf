$tag @a[tag=player_$(target1)] add fed
$tag @a[tag=player_$(target2),tag=!spectator,tag=well_fed] remove fed
$tag @a[tag=player_$(target2),tag=!spectator,tag=sick] remove fed
$tellraw @s [{color:light_purple,text:"[Meal] "},{color:white,text:"You prepared a meal for "},{color:white,selector:"@a[tag=player_$(target1)]"}]
$execute if entity @a[tag=player_$(target2),tag=well_fed] run tellraw @s [{color:light_purple,text:"[Meal] "},{color:white,selector:"@a[tag=player_$(target2),tag=well_fed]"},{color:white,text:" reacted well to your meal!"}]
$execute if entity @a[tag=player_$(target2),tag=sick] run tellraw @s [{color:light_purple,text:"[Meal] "},{color:white,selector:"@a[tag=player_$(target2),tag=sick]"},{color:white,text:" reacted poorly to your meal!"}]
$tag @a[tag=player_$(target2),tag=!spectator,tag=well_fed] add healed
$tag @a[tag=player_$(target2),tag=!spectator,tag=sick] add blocked
$scoreboard players set @s target2 $(target1)
$tag @a[tag=player_$(target2)] remove well_fed
$tag @a[tag=player_$(target2)] remove sick