$data modify storage w:temp string1 set value "$(firstchar)"
$execute if data storage w:config upper.$(firstchar) run data modify storage w:temp string1 set from storage w:config upper.$(firstchar)
data modify storage w:temp string2 set string storage w:temp string 1
function w:help/string/concatenate with storage w:temp