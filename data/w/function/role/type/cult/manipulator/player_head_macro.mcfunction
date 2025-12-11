$execute if data storage w:temp state{stage:"Act"} run tellraw @s [{text:"You set target $(state) to "},{selector:"@a[tag=player_$(id)]"}]
$execute if data storage w:temp state{stage:"Act"} run scoreboard players set @s target$(state) $(id)
$execute if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" voted for "},{selector:"@a[tag=player_$(id)]"}]
$execute if data storage w:temp state{stage:"Vote"} run scoreboard players set @s target1 $(id)
execute if data storage w:temp state{stage:"Act"} run function w:role/handle {path:"back"}