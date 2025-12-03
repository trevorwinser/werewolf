data modify storage w:temp role.types set value ["town","neutral","cult"]
#$say REMOVING TYPE: $(type) from role.types
data remove storage w:temp temp_role

$data modify storage w:temp not_type set value "$(not_type)"
execute if data storage w:temp {not_type:"town"} run data remove storage w:temp role.types[0]
execute if data storage w:temp {not_type:"neutral"} run data remove storage w:temp role.types[1]
execute if data storage w:temp {not_type:"cult"} run data remove storage w:temp role.types[2]
data modify storage w:temp type1 set from storage w:temp role.types[0]
data modify storage w:temp type2 set from storage w:temp role.types[1]
data modify storage w:temp type3 set from storage w:temp role.types[2]
execute if score role.townamount storage = role.amount storage if data storage w:temp {type1:"town"} run data remove storage w:temp role.types[0]
execute if score role.cultamount storage >= role.halfamount storage if data storage w:temp {type1:"cult"} run data remove storage w:temp role.types[0]
execute if score role.cultamount storage >= role.halfamount storage if data storage w:temp {type2:"cult"} run data remove storage w:temp role.types[1]
execute if score role.cultamount storage >= role.halfamount storage if data storage w:temp {type3:"cult"} run data remove storage w:temp role.types[2]
execute if score role.cultamount storage >= role.townamount storage unless score role.townamount storage matches ..0 if data storage w:temp {type1:"cult"} run data remove storage w:temp role.types[0]
execute if score role.cultamount storage >= role.townamount storage unless score role.townamount storage matches ..0 if data storage w:temp {type2:"cult"} run data remove storage w:temp role.types[1]
execute if score role.cultamount storage >= role.townamount storage unless score role.townamount storage matches ..0 if data storage w:temp {type3:"cult"} run data remove storage w:temp role.types[2]

function w:start/help/set_random_index {type:"types"}
function w:start/help/set_type with storage w:temp
#data modify storage w:temp text set from storage w:temp type
#function w:help/test/text with storage w:temp