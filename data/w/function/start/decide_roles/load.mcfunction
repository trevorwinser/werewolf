# This will only modify temporary storage and scoreboard values.
# All original values such as the available list will be unaltered

scoreboard players set temp storage 2
scoreboard players operation role.halfamount storage = role.amount storage
scoreboard players operation role.halfamount storage /= temp storage

data modify storage w:temp role set from storage w:config role
data modify storage w:temp role.town set value []
data modify storage w:temp role.neutral set value []
data modify storage w:temp role.cult set value []
data modify storage w:temp role.individual set value []
data modify storage w:temp role.any set value []
function w:start/help/for_each_role_list {command:"function w:start/help/for_each_role_available with storage w:temp for_loop", inner_for_loop_command:"function w:start/decide_roles/remove_duplicate with storage w:temp inner_for_loop"}

# Filter "Any" roles from available
function w:start/help/for_each_role_available {inner_for_loop_command:"function w:start/decide_roles/filter_any with storage w:temp inner_for_loop"}

# Separate roles into categories
function w:start/help/for_each_role_list {command:"function w:start/decide_roles/separate_roles with storage w:temp for_loop", inner_for_loop_command:""}

# Add town roles
execute if score role.anytown storage matches 1.. run function w:start/decide_roles/handle_any {type:"town"}

# Add neutral roles
execute if score role.anyneutral storage matches 1.. run function w:start/decide_roles/handle_any {type:"neutral"}

# Add cult roles
execute if score role.anycult storage matches 1.. run function w:start/decide_roles/handle_any {type:"cult"}

# Add individual roles
execute if score role.anyindividual storage matches 1.. run function w:start/decide_roles/handle_any {type:"individual"}

# Add any roles
execute if score role.any storage matches 1.. run function w:start/decide_roles/handle_any {type:"any"}

execute if score role.amount storage < playing game run function w:start/decide_roles/handle_not_enough_roles

# 
execute if score role.townamount storage = role.amount storage run function w:start/decide_roles/handle_all_town

execute if score role.cultamount storage = role.amount storage run function w:start/decide_roles/handle_all_cult

execute if score role.executioner storage < role.townamount storage run function w:start/decide_roles/handle_executioner

execute if score role.halfamount storage < role.cultamount storage run function w:start/decide_roles/handle_too_many_cult