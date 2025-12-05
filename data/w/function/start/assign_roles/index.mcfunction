$function w:start/help/set_temp_role {source:"w:temp",location:"role.$(value)",index:$(start)}
$data modify storage w:temp temp_role.index set value $(start)
function w:start/assign_roles/add_index_tag with storage w:temp temp_role