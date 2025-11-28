#data modify storage w:config role.available append from storage w:temp inner_for_loop.name
#$say $(start) $(name) $(type) $(display) $(end)
execute if data storage w:temp inner_for_loop{type:"town"} if score role.townamount storage matches 9.. run return run say "Not possible"
execute if data storage w:temp inner_for_loop{type:"neutral"} if score role.neutralamount storage matches 1.. run return run say "Not possible"
execute if data storage w:temp inner_for_loop{type:"cult"} if score role.individualamount storage matches 2.. run return run say "Not possible"
execute if data storage w:temp inner_for_loop{type:"individual"} if score role.cultamount storage matches 5.. run return run say "Not possible"
execute if data storage w:temp inner_for_loop{type:"town"} run scoreboard players add role.townamount storage 1
execute if data storage w:temp inner_for_loop{type:"neutral"} run scoreboard players add role.neutralamount storage 1
execute if data storage w:temp inner_for_loop{type:"cult"} run scoreboard players add role.cultamount storage 1
execute if data storage w:temp inner_for_loop{type:"individual"} run scoreboard players add role.individualamount storage 1

data remove storage w:temp temp_role
$data modify storage w:temp temp_role.name set value "$(name)"
$data modify storage w:temp temp_role.type set value "$(type)"
$data modify storage w:temp temp_role.display set value "$(display)"
#$say $(name) $(type) $(display)
data modify storage w:config role.available append from storage w:temp temp_role


data modify storage w:temp source set value "w:temp"
data modify storage w:temp path set value "string2"
$data modify storage w:temp string1 set value "$(display)"
data modify storage w:temp string2 set value "\n"
function w:help/string/concatenate with storage w:temp


data modify storage w:temp source set value "w:config"
data modify storage w:temp path set value "role.display.text"
data modify storage w:temp string1 set from storage w:config role.display.text
function w:help/string/concatenate with storage w:temp