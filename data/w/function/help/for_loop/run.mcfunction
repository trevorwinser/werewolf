# For loop is start to end inclusive, stepping by step after each iteration.
execute store result score start for_loop run data get storage w:temp for_loop.start
execute store result score end for_loop run data get storage w:temp for_loop.end
execute if score start for_loop > end for_loop run return 0
$$(command)
scoreboard players add i storage 1
scoreboard players add iterations storage 1
execute store result score step for_loop run data get storage w:temp for_loop.step
execute unless data storage w:temp for_loop{skip_increment:true} run scoreboard players operation start for_loop += step for_loop
data remove storage w:temp for_loop.skip_increment
execute store result storage w:temp for_loop.start int 1 run scoreboard players get start for_loop
function w:help/for_loop/run with storage w:temp for_loop
