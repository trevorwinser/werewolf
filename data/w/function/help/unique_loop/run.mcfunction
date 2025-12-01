# For loop is start to end inclusive, stepping by step after each iteration.
$execute store result score start $(name) run data get storage w:temp $(name).start
$execute store result score end $(name) run data get storage w:temp $(name).end
$execute if score start $(name) > end $(name) run return 0
$$(command)
$execute store result score step $(name) run data get storage w:temp $(name).step
$execute unless data storage w:temp $(name){skip_increment:true} run scoreboard players operation start $(name) += step $(name)
#$execute if data storage w:temp $(name){skip_increment:true} run say "Skipped $(start) $(command)"
$data remove storage w:temp $(name).skip_increment
$execute store result storage w:temp $(name).start int 1 run scoreboard players get start $(name)
$function w:help/$(name)/run with storage w:temp $(name)
