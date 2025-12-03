#data modify storage w:config role.available append from storage w:temp inner_for_loop.name
#$say $(start) $(end)
execute store result score role.amount storage run data get storage w:config role.available
execute if score role.amount storage matches 11.. run return run say "Not possible"
execute if data storage w:temp temp_role{type:"town"} if score role.townamount storage >= role.townamount max run return 0
execute if data storage w:temp temp_role{type:"neutral"} if score role.neutralamount storage >= role.neutralamount max run return 0
execute if data storage w:temp temp_role{type:"individual"} if score role.cultamount storage >= role.cultamount max run return 0
execute if data storage w:temp temp_role{type:"town"} run scoreboard players add role.townamount storage 1
execute if data storage w:temp temp_role{type:"neutral"} run scoreboard players add role.neutralamount storage 1
execute if data storage w:temp temp_role{type:"cult"} run scoreboard players add role.cultamount storage 1

#execute if data storage w:temp temp_role run say HIII
data modify storage w:config role.available append from storage w:temp temp_role


data modify storage w:temp source set value "w:temp"
data modify storage w:temp path set value "string2"
data modify storage w:temp string1 set from storage w:temp temp_role.display
data modify storage w:temp string2 set value "\n"
function w:help/string/concatenate with storage w:temp


data modify storage w:temp source set value "w:config"
data modify storage w:temp path set value "role.display.text"
data modify storage w:temp string1 set from storage w:config role.display.text
function w:help/string/concatenate with storage w:temp