$data modify storage w:temp name set from storage w:temp role.available[$(start)]
$execute if data storage w:temp {name:"executioner"} run data remove storage w:temp role.available[$(start)]