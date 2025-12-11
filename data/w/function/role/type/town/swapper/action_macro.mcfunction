$tag @a[scores={target1=$(1)}] add swap_action
$tag @a[scores={target1=$(2)}] add swap_action
$scoreboard players set @a[scores={target1=$(1)}] target1 -1
$scoreboard players set @a[scores={target1=$(2)}] target1 $(1)
$scoreboard players set @a[scores={target1=-1}] target1 $(2)

$tellraw @a[tag=player_$(1)] [{text:"[Swap] ",color:green},{color:white,text:"You have swapped places with "},{color:white,selector:"@a[tag=player_$(2)]"}]
$tellraw @a[tag=player_$(2)] [{text:"[Swap] ",color:green},{color:white,text:"You have swapped places with "},{color:white,selector:"@a[tag=player_$(1)]"}]

$tellraw @a[tag=!swapper,tag=!manipulator,tag=swap_action,scores={target1=$(1)}] [{text:"[Swap] ",color:green},{color:white,text:"Your target has been swapped with "},{color:white,selector:"@a[tag=player_$(1)]"}]
$tellraw @a[tag=!swapper,tag=!manipulator,tag=swap_action,scores={target1=$(2)}] [{text:"[Swap] ",color:green},{color:white,text:"Your target has been swapped with "},{color:white,selector:"@a[tag=player_$(2)]"}]

$tellraw @s [{color:green,text:"[Swap] "},{color:white,text:"You swapped "},{color:white,selector:"@a[tag=player_$(1)]"},{color:white,text:" and "},{color:white,selector:"@a[tag=player_$(2)]"}]

tag @a remove swap_action