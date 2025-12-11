tag @a[tag=survivor,tag=!spectator] add won
execute if entity @a[tag=won] run tellraw @a [{text:"The winner(s) are: "},{selector:"@a[tag=won]"}]
execute as @a[tag=won] run function w:end/won
schedule function w:load 1t
return fail