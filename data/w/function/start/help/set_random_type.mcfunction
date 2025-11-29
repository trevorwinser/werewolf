data modify storage w:temp types set value ["town","neutral","cult","individual"]
# Set index to 4 to not remove any
$data remove storage w:temp types[$(exclude)]
data modify storage w:temp low set value 0
data modify storage w:temp high set value 2
execute store result storage w:temp index int 1 run function w:help/roll/get with storage w:temp
function w:start/help/set_type with storage w:temp