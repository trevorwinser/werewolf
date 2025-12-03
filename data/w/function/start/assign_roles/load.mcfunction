data modify storage w:temp role.temp set from storage w:temp role.available
function w:start/help/for_each_role_inner {inner_for_loop_command:"execute as @r[tag=!assigned] run function w:start/assign_roles/assign with storage w:temp inner_for_loop",inner_for_loop_value:"temp"}
data remove storage w:temp role.temp