# Remove some of the roles of that type. Remove more than majority if type is cult to prevent instant win on votes
$say HANDLING ALL TYPE: $(type)
data modify storage w:temp for_loop.command set value "function w:start/help/remove_some with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
scoreboard players operation temp storage = role.halfamount storage
execute if data storage w:temp {type:"town"} store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
execute unless data storage w:temp {type:"town"} store result storage w:temp for_loop.end int 1 run scoreboard players add temp storage 1
function w:help/for_loop/start with storage w:temp for_loop


# Add roles that are not of type $(type)
data modify storage w:temp for_loop.command set value "function w:start/help/add_not_type with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
$data modify storage w:temp for_loop.type set value "$(type)"
scoreboard players operation temp storage = role.halfamount storage
execute if data storage w:temp {type:"town"} store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
execute unless data storage w:temp {type:"town"} store result storage w:temp for_loop.end int 1 run scoreboard players add temp storage 1
function w:help/for_loop/start with storage w:temp for_loop