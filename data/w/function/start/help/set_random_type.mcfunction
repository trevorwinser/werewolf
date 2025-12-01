data modify storage w:temp types set value ["town","neutral","cult","individual"]
#$say REMOVING TYPE: $(type) from types
# Set index to 4 to not remove any
data remove storage w:temp temp_role

$data modify storage w:temp not_type set value "$(not_type)"
execute if data storage w:temp {not_type:"town"} run data remove storage w:temp types[0]
execute if data storage w:temp {not_type:"neutral"} run data remove storage w:temp types[1]
execute if data storage w:temp {not_type:"cult"} run data remove storage w:temp types[2]
execute if data storage w:temp {not_type:"individual"} run data remove storage w:temp types[3]

data modify storage w:temp low set value 0
execute store result storage w:temp high int 1 run data get storage w:temp types
execute store result storage w:temp index int 1 run function w:help/roll/get with storage w:temp
function w:start/help/set_type with storage w:temp