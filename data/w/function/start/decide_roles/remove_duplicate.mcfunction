#$say $(value)
$data modify storage w:temp string1 set from storage w:temp role.available[$(start)].name
$data modify storage w:temp string2 set from storage w:temp role.$(value)[$(for_loop_start)].name
execute if function w:help/string/equals run data modify storage w:temp inner_for_loop.skip_increment set value true
$execute if data storage w:temp inner_for_loop{skip_increment:true} run data remove storage w:temp role.$(value)[$(for_loop_start)]
execute if data storage w:temp inner_for_loop{skip_increment:true} store result score temp storage run data get storage w:temp for_loop.end
execute if data storage w:temp inner_for_loop{skip_increment:true} store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1