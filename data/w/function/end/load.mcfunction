execute as @a[tag=won] run function w:sound/play_one {sound:"minecraft:ui.toast.challenge_complete",volume:1,pitch:1}
tag @a[tag=survivor,tag=!spectator] add won
team leave @a
tellraw @s ""
execute if entity @a[tag=won] run tellraw @a [{text:"The winner(s) are: "},{selector:"@a[tag=won]"}]
tag @a add me
execute as @a run function w:end/role
tag @a remove me
title @a subtitle [{selector:"@a[tag=won]"}, {text:" won!"}]
execute unless entity @a[tag=won] run title @a title {text:"Nobody won!"}
execute unless entity @a[tag=won] run tellraw @a [{text:"Nobody won!"}]

scoreboard players add @a[tag=won] wins 1

schedule function w:load 1t
return fail