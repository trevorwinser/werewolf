#$say i:$(for_loop_start) j:$(start)
$data modify storage w:temp string1 set from storage w:temp role.available[$(for_loop_start)].name
$data modify storage w:temp string2 set from storage w:temp role.$(value)[$(start)].name
execute if function w:help/string/equals run data modify storage w:temp inner_for_loop.skip_increment set value true
$execute if data storage w:temp inner_for_loop{skip_increment:true} run data modify storage w:temp location set value "$(value)"
$execute if data storage w:temp inner_for_loop{skip_increment:true} run data modify storage w:temp index set value "$(start)"
execute if data storage w:temp inner_for_loop{skip_increment:true} run function w:start/help/remove_role with storage w:temp
execute if data storage w:temp inner_for_loop{skip_increment:true} store result score temp storage run data get storage w:temp inner_for_loop.end
execute if data storage w:temp inner_for_loop{skip_increment:true} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
