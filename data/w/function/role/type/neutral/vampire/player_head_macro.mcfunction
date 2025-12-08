$execute if data storage w:temp state{stage:"Act"} run tellraw @s [{text:"You set your target to "},{selector:"@a[tag=player_$(id)]"}]
tag @s add me
$execute if data storage w:temp state{stage:"Act"} run tellraw @a[tag=vampire,tag=!me] [{selector:"@s"},{text:" voted to bite "},{selector:"@a[tag=player_$(id)]"}]
tag @s remove me
$execute if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" voted for "},{selector:"@a[tag=player_$(id)]"}]
$scoreboard players set @s target1 $(id)