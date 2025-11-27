#function w:help/string/capitalize1 {source:"w:temp",path:"string",string:"example"}
$data modify storage w:temp source set value "$(source)"
$data modify storage w:temp path set value "$(path)"
$data modify storage w:temp string set value "$(string)"
data modify storage w:temp firstchar set string storage w:temp string 0 1
function w:help/string/capitalize2 with storage w:temp