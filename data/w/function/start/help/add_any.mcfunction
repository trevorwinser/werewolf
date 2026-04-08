# This will add a random role of type "type"
function w:start/decide_roles/count_roles
$data modify storage w:temp type set value $(type)
execute if data storage w:temp {type:"any"} run function w:start/help/set_random_type {not_type:"any"}

function w:start/help/set_random_index with storage w:temp
function w:start/help/set_location_type with storage w:temp

function w:start/help/set_temp_role with storage w:temp
data modify storage w:temp location set from storage w:temp type

$execute if data storage w:temp temp_role{name:"executioner"} unless score role.townamount storage matches 2.. run return run function w:start/help/add_any {type:"$(type)"}
$execute unless data storage w:temp temp_role run return run function w:start/help/add_any {type:"$(type)"}
function w:start/help/remove_role with storage w:temp
data modify storage w:temp location set value "role.available"

return run function w:start/help/add_role with storage w:temp