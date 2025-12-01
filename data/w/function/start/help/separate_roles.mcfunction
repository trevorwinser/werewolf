$data modify storage w:temp temp_role set from storage w:temp role.list[$(start)]
execute if data storage w:temp temp_role{type:"town"} run data modify storage w:temp role.town append from storage w:temp temp_role
execute if data storage w:temp temp_role{type:"neutral"} run data modify storage w:temp role.neutral append from storage w:temp temp_role
execute if data storage w:temp temp_role{type:"cult"} run data modify storage w:temp role.cult append from storage w:temp temp_role
execute if data storage w:temp temp_role{type:"individual"} run data modify storage w:temp role.individual append from storage w:temp temp_role