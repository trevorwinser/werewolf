$execute if data storage w:temp state{stage:"Act"} if entity @a[tag=player_$(id),tag=fed] if entity @s[scores={target2=$(id)}] run tellraw @s "You cannot prepare a meal for someone two nights in a row!"
$execute if data storage w:temp state{stage:"Act"} if entity @a[tag=player_$(id),tag=fed] if entity @s[scores={target2=$(id)}] run return 0
$execute if data storage w:temp state{stage:"Act"} run tellraw @s [{text:"You set your target to "},{selector:"@a[tag=player_$(id)]"}]
$execute unless score @s target1 matches $(id) if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" voted for "},{selector:"@a[tag=player_$(id)]"}]
$scoreboard players set @s target1 $(id)
function w:role/handle {path:"back"}