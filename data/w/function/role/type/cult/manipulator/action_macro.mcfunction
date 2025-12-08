$scoreboard players set @a[tag=player_$(1)] target1 $(2)
$scoreboard players set @a[tag=player_$(1)] target2 $(1)
$tellraw @a[tag=player_$(1)] [{text:"You were manipulated to act on "},{selector:"@a[tag=player_$(2)]"}]
$scoreboard players set @a[tag=player_$(2)] target1 $(1)
$scoreboard players set @a[tag=player_$(2)] target2 $(2)
$tellraw @a[tag=player_$(2)] [{text:"You were manipulated to act on "},{selector:"@a[tag=player_$(1)]"}]

$tellraw @s [{text:"You manipulated "},{selector:"@a[tag=player_$(2)]"},{text:" to act on "},{selector:"@a[tag=player_$(2)]"},{text:" and vice versa"}]

#$function w:role/type/cult/manipulator/action_fail {target:$(1)}
#$function w:role/type/cult/manipulator/action_fail {target:$(2)}