$execute if score @s role_action matches 1 if score @s target2 matches $(id) run tellraw @s "Swapping the same player with themself will do nothing"
$execute if score @s role_action matches 2 if score @s target1 matches $(id) run tellraw @s "Swapping the same player with themself will do nothing"
$execute if data storage w:temp state{stage:"Act"} run tellraw @s [{text:"You set target $(state) to "},{selector:"@a[tag=player_$(id)]"}]
$execute if data storage w:temp state{stage:"Act"} run scoreboard players set @s target$(state) $(id)
$execute if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" voted for "},{selector:"@a[tag=player_$(id)]"}]
$execute if data storage w:temp state{stage:"Vote"} run scoreboard players set @s target1 $(id)