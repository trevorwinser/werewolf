# For loop is start to end inclusive, stepping by step after each iteration.

execute store result score start inner_for_loop run data get storage w:temp inner_for_loop.start
execute store result score end inner_for_loop run data get storage w:temp inner_for_loop.end
execute if score start inner_for_loop > end inner_for_loop run return 0
#$say $(command) $(start) $(end) $(step)
$$(command)
scoreboard players add j storage 1
scoreboard players add iterations storage 1
execute store result score step inner_for_loop run data get storage w:temp inner_for_loop.step
execute unless data storage w:temp inner_for_loop{skip_increment:true} run scoreboard players operation start inner_for_loop += step inner_for_loop
#$execute if data storage w:temp inner_for_loop{skip_increment:true} run say "Skipped $(start) $(command)"
data remove storage w:temp inner_for_loop.skip_increment
execute store result storage w:temp inner_for_loop.start int 1 run scoreboard players get start inner_for_loop
function w:help/inner_for_loop/run with storage w:temp inner_for_loop