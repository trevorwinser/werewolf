$function w:start/help/set_temp_role {location:"role.$(value)",index:$(start)}
$function w:start/help/remove_role {location:"role.$(value)",index:$(start)}
data modify storage w:temp text set from storage w:temp temp_role
function w:help/test/text with storage w:temp
$data modify storage w:temp list set value "$(value)"
execute if data storage w:temp temp_role{name:"any"} run data modify storage w:temp inner_for_loop.skip_increment set value true
execute if data storage w:temp temp_role{name:"anytown"} run data modify storage w:temp inner_for_loop.skip_increment set value true
execute if data storage w:temp temp_role{name:"anyneutral"} run data modify storage w:temp inner_for_loop.skip_increment set value true
execute if data storage w:temp temp_role{name:"anycult"} run data modify storage w:temp inner_for_loop.skip_increment set value true
execute if data storage w:temp temp_role{name:"anyindividual"} run data modify storage w:temp inner_for_loop.skip_increment set value true

execute if data storage w:temp temp_role{name:"any"} store result score temp storage run data get storage w:temp inner_for_loop.end
execute if data storage w:temp temp_role{name:"anytown"} store result score temp storage run data get storage w:temp inner_for_loop.end
execute if data storage w:temp temp_role{name:"anyneutral"} store result score temp storage run data get storage w:temp inner_for_loop.end
execute if data storage w:temp temp_role{name:"anycult"} store result score temp storage run data get storage w:temp inner_for_loop.end
execute if data storage w:temp temp_role{name:"anyindividual"} store result score temp storage run data get storage w:temp inner_for_loop.end

execute if data storage w:temp temp_role{name:"any"} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
execute if data storage w:temp temp_role{name:"anytown"} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
execute if data storage w:temp temp_role{name:"anyneutral"} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
execute if data storage w:temp temp_role{name:"anycult"} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
execute if data storage w:temp temp_role{name:"anyindividual"} store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1

execute unless data storage w:temp temp_role{name:"any"} unless data storage w:temp temp_role{name:"anytown"} unless data storage w:temp temp_role{name:"anyneutral"} unless data storage w:temp temp_role{name:"anycult"} unless data storage w:temp temp_role{name:"anyindividual"} run return run function w:start/help/add_role with storage w:temp