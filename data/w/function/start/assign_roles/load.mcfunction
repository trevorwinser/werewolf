scoreboard objectives add active_roles dummy
data modify storage w:temp role.temp set from storage w:temp role.available
function w:start/help/for_each_role_inner {inner_for_loop_command:"execute as @r[tag=!assigned] run function w:start/assign_roles/assign with storage w:temp inner_for_loop",inner_for_loop_value:"temp"}
data remove storage w:temp role.temp

scoreboard objectives add index dummy
function w:start/help/for_each_role_inner {inner_for_loop_command:"function w:start/assign_roles/index with storage w:temp inner_for_loop",inner_for_loop_value:"available"}
tag @a remove number_assigned

tag @a[tag=!assigned] add spectator