# This will add a random role of type "type"
$execute store result score temp storage run data get storage w:temp role.$(type)
execute store result storage w:temp high int 1 run scoreboard players remove temp storage 1
data modify storage w:temp low set value 0
execute store result storage w:temp index int 1 run function w:help/roll/get with storage w:temp
$data modify storage w:temp location set value "role.$(type)"
function w:start/help/set_temp_role with storage w:temp
function w:start/help/remove_role with storage w:temp
return run function w:start/help/add_role with storage w:temp