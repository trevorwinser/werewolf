$tag @a[tag=player_$(target)] add cultkilled
$tellraw @a[tag=cult,tag=!spectator] [{selector:"@s"},{color:white,text:" attempted to kill "},{selector:"@a[tag=player_$(target)]"}]