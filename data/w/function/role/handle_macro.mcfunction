#$say running: function w:role/type/$(type)/$(name)/$(path)
data modify storage w:temp exists set value false
$execute unless function w:role/type/$(type)/$(name)/$(path) run data modify storage w:temp exists set value true
#$execute if data storage w:temp {exists:false} run say running: function w:role/type/generic/$(path)
$execute if data storage w:temp {exists:false} run function w:role/type/generic/$(path)
