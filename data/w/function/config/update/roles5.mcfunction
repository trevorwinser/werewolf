data modify storage w:temp source set value "w:config"
data modify storage w:temp path set value "role.display.text"
data modify storage w:temp string1 set from storage w:config role.display.text
data modify storage w:temp string2 set value "\n"
function w:help/string/concatenate with storage w:temp
