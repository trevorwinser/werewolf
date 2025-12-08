data modify storage w:temp index set value 1000
execute if score @s index matches 0..10 store result storage w:temp index int 1 run scoreboard players get @s index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
title @s actionbar {"text": "","extra": [{"text":"Role: "},{"storage":"w:temp","nbt":"temp_role.display"},{"text":" | Goal: "},{"storage":"w:temp","nbt":"temp_role.goal"}]}
# TO DO: properly assign each executioner their target and report it to them with proper selecting
title @s[tag=executioner] actionbar {"text": "","extra": [{"text":"Role: "},{"storage":"w:temp","nbt":"temp_role.display"},{"text":" | Goal: "},{"text":"Eliminate "},{"selector":"@a[tag=target]"},{"text":" at any cost."}]}