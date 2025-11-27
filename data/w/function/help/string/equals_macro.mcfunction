$data modify storage w:temp string1 set value $(string1)
$execute if data storage w:temp {string1:"$(string2)"} run say "The same! $(string1) $(string2)"
$execute if data storage w:temp {string1:"$(string2)"} run return 1
return 0