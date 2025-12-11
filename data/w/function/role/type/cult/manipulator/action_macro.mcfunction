$scoreboard players set @a[tag=player_$(1)] target1 $(2)
$scoreboard players set @a[tag=player_$(1)] target2 $(1)
$tellraw @a[tag=player_$(1)] [{color:red,text:"[Manipulation] "},{color:white,text:"You were manipulated to act on "},{color:white,selector:"@a[tag=player_$(2)]"}]
$scoreboard players set @a[tag=player_$(2)] target1 $(1)
$scoreboard players set @a[tag=player_$(2)] target2 $(2)
$tellraw @a[tag=player_$(2)] [{color:red,text:"[Manipulation] "},{color:white,text:"You were manipulated to act on "},{color:white,selector:"@a[tag=player_$(1)]"}]

$tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You manipulated "},{color:white,selector:"@a[tag=player_$(1)]"},{color:white,text:" to act on "},{color:white,selector:"@a[tag=player_$(2)]"},{color:white,text:" and vice versa"}]

#$function w:role/type/cult/manipulator/action_fail {target:$(1)}
#$function w:role/type/cult/manipulator/action_fail {target:$(2)}