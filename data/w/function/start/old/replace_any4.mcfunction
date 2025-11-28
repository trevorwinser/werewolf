data modify storage w:temp any set value false
function w:start/any2 with storage w:temp for_loop
$execute if data storage w:temp {any:true} run data modify storage w:temp for_loop.type set from storage w:config role.available[$(start)].type
execute if data storage w:temp {any:true} run function w:start/replace_any5 with storage w:temp for_loop