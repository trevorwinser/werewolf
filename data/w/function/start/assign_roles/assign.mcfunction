say ASSIGNING
function w:start/help/set_random_index {type:"available"}
data modify storage w:temp location set value "role.available"
function w:start/help/set_temp_role with storage w:temp
function w:start/assign_roles/add_tag with storage w:temp temp_role
function w:start/help/remove_role with storage w:temp