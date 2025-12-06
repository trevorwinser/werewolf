function w:role/type/cult/manipulator/action_fail

$scoreboard players set @a[tag=player_$(1)] target1 $(2)
$execute if entity @a[tag=player_$(1),tag=swapper] run scoreboard players set @a[tag=player_$(1)] target2 $(1)

$scoreboard players set @a[tag=player_$(2)] target1 $(1)
$execute if entity @a[tag=player_$(2),tag=swapper] run scoreboard players set @a[tag=player_$(2)] target2 $(2)