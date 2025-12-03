execute store result score role.amount storage run data get storage w:config role.available
execute if score role.amount storage matches 11.. run return 0
$function w:help/role/set_temp_role {source:"w:config",location:"role.list",index:$(start)}
data modify storage w:temp inner_for_loop.command set value "function w:config/update/roles4 with storage w:temp inner_for_loop"
data modify storage w:temp inner_for_loop.start set value 0
data modify storage w:temp inner_for_loop.step set value 1
function w:config/update/roles3 with storage w:temp temp_role
function w:help/inner_for_loop/start with storage w:temp inner_for_loop
data remove storage w:temp temp_role