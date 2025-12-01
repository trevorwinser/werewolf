# This will add a random role of type "type"

$data modify storage w:temp type set value $(type)

function w:start/help/set_random_index with storage w:temp


$data modify storage w:temp location set value "role.$(type)"
function w:start/help/set_temp_role with storage w:temp
data modify storage w:temp location set from storage w:temp type
$execute unless data storage w:temp temp_role run return run function w:start/help/add_any {type:"$(type)"}
function w:start/help/remove_role with storage w:temp
data modify storage w:temp location set value "role.available"

return run function w:start/help/add_role with storage w:temp
