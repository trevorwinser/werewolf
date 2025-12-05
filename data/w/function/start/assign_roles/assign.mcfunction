$function w:start/help/set_random_index {type:"$(value)"}
$data modify storage w:temp location set value "role.$(value)"
function w:start/help/set_temp_role with storage w:temp
function w:start/assign_roles/add_tag with storage w:temp temp_role
$data modify storage w:temp location set value "$(value)"
function w:start/help/remove_role with storage w:temp
$execute store result score temp storage run data get storage w:temp role.$(value)
execute store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
data modify storage w:temp inner_for_loop.skip_increment set value true