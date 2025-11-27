$data modify storage w:temp string1 set from storage w:config role.available[$(start)].name
data modify storage w:temp string2 set value "any"
execute if function w:help/string/equals run data modify storage w:temp any set value true
data modify storage w:temp string2 set value "anytown"
execute if function w:help/string/equals run data modify storage w:temp any set value true
data modify storage w:temp string2 set value "anyneutral"
execute if function w:help/string/equals run data modify storage w:temp any set value true
data modify storage w:temp string2 set value "anycult"
execute if function w:help/string/equals run data modify storage w:temp any set value true
data modify storage w:temp string2 set value "anyindividual"
execute if function w:help/string/equals run data modify storage w:temp any set value true