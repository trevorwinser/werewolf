# This will only modify temporary storage and scoreboard values.
# All original values such as the available list will be unaltered



data modify storage w:temp role set from storage w:config role
data modify storage w:temp role.town set value []
data modify storage w:temp role.neutral set value []
data modify storage w:temp role.cult set value []
data modify storage w:temp role.individual set value []

# Filter "Any" roles from available
function w:start/decide_roles/filter_any

# Remove available from list
function w:start/decide_roles/remove_duplicate {list:"list"}

# Separate roles into categories
function w:start/decide_roles/separate_roles


execute if score role.amount storage < total online run function w:start/decide_roles/handle_not_enough_roles

# Add any roles
execute if score role.any storage matches 1.. run function w:start/decide_roles/handle_any {type:"any"}

# Add town roles
execute if score role.anytown storage matches 1.. run function w:start/decide_roles/handle_any {type:"town"}

# Add neutral roles
execute if score role.anyneutral storage matches 1.. run function w:start/decide_roles/handle_any {type:"neutral"}

# Add cult roles
execute if score role.anycult storage matches 1.. run function w:start/decide_roles/handle_any {type:"cult"}

# Add individual roles
execute if score role.anyindividual storage matches 1.. run function w:start/decide_roles/handle_any {type:"individual"}

function w:start/decide_roles/count_roles

# Handle all roles town 
#execute if score role.townamount storage matches 1.. if score role.townamount storage = role.amount storage run function w:start/decide_roles/handle_all_type {type:"town"}
#execute if score role.cultamount storage matches 1.. if score role.cultamount storage = role.amount storage run function w:start/decide_roles/handle_all_type {type:"cult"}

function w:start/decide_roles/count_roles

# Handle executioner by requiring that at least one town exists
execute if score role.executioner storage < role.townamount storage run function w:start/decide_roles/handle_executioner

execute if score role.halfamount storage < role.cultamount storage run function w:start/decide_roles/handle_too_many_cult
