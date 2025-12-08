$tag @a[scores={target1=$(1)}] add swap_action
$tag @a[scores={target1=$(2)}] add swap_action
$scoreboard players set @a[scores={target1=$(1)}] target1 -1
$scoreboard players set @a[scores={target1=$(2)}] target1 $(1)
$scoreboard players set @a[scores={target1=-1}] target1 $(1)

$tellraw @a[tag=player_$(1)] [{text:"You have swapped places with "},{selector:"@a[tag=player_$(2)]"}]
$tellraw @a[tag=player_$(2)] [{text:"You have swapped places with "},{selector:"@a[tag=player_$(1)]"}]

$tellraw @a[tag=swap_action,scores={target1=$(1)}] [{text:"Your target has been swapped with "},{selector:"@a[tag=player_$(1)]"}]
$tellraw @a[tag=swap_action,scores={target1=$(2)}] [{text:"Your target has been swapped with "},{selector:"@a[tag=player_$(2)]"}]
tag @a remove swap_action