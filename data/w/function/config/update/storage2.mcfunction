#$say $(start) $(section) $(start)
data modify storage w:temp for_loop.name set value ""
$data modify storage w:temp for_loop.name set from storage $(path) $(section).list[$(start)].name
data modify storage w:temp for_loop.type set value ""
$data modify storage w:temp for_loop.type set from storage $(path) $(section).list[$(start)].type
function w:config/update/storage3 with storage w:temp for_loop