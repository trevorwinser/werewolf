#$say $(start) $(section) $(start)
$data modify storage w:temp section set value $(section)
$data modify storage w:temp name set from storage w:config $(section).list[$(start)].name
function w:config/update/storage3 with storage w:temp