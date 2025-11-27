$data modify storage w:temp inner_for_loop.section set value $(section)
$data modify storage w:temp inner_for_loop.name set from storage w:config $(section).list[$(start)].name
data modify storage w:temp inner_for_loop.command set value "function w:config/update/storage3 with storage w:temp inner_for_loop"
data modify storage w:temp inner_for_loop.start set value 0
data modify storage w:temp inner_for_loop.step set value 1
function w:help/inner_for_loop/start with storage w:temp inner_for_loop