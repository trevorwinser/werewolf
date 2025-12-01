say REMOVING
$data modify storage w:temp index set value $(start)
data modify storage w:temp location set value "role.available"
function w:start/help/set_temp_role with storage w:temp
function w:end/remove_roles/remove_tag with storage w:temp temp_role