$execute if data storage w:temp state{stage:"Act"} run tellraw @s [{text:"You set your target to "},{selector:"@a[tag=player_$(id)]"}]
$execute unless score @s target1 matches $(id) if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" voted for "},{selector:"@a[tag=player_$(id)]"}]
$scoreboard players set @s target1 $(id)