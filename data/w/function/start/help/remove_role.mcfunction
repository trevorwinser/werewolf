#$say removing role at role.$(location)[$(index)]
#$data modify storage w:temp text set from storage w:temp role.$(location)[$(index)]
#data modify storage w:temp source set value "w:temp"
#data modify storage w:temp path set value "text"
#data modify storage w:temp string set from storage w:temp text
#$data modify storage w:temp source set value "REMOVING ROLE AT: role.$(location)[$(index)]"
#function w:help/string/concatenate with storage w:temp
#function w:help/test/text with storage w:temp
$data remove storage w:temp role.$(location)[$(index)]
