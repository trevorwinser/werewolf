$tag @a[tag=player_$(target)] add investigate

execute if score @s index matches 0..10 store result storage w:temp index int 1 run scoreboard players get @n[tag=investigate] index
data modify storage w:temp source set value "w:temp"
data modify storage w:temp location set value "role.available"
function w:help/role/set_temp_role with storage w:temp
data modify storage w:temp clue.type set from storage w:temp temp_role.type
data modify storage w:temp clue.subtype set from storage w:temp temp_role.subtype

execute as @s[tag=deceived] if data storage w:temp clue{type:"town",subtype:"power"} run data modify storage w:temp clue.subtype set value "evily"
execute as @s[tag=deceived] if data storage w:temp clue{type:"cult",subtype:"power"} run data modify storage w:temp clue set value {type:"towny",subtype:"support"}
execute as @s[tag=deceived] if data storage w:temp clue{type:"town"} run data modify storage w:temp clue.type set value "culty"
execute as @s[tag=deceived] if data storage w:temp clue{type:"cult"} run data modify storage w:temp clue.type set value "towny"
execute as @s[tag=deceived] if data storage w:temp clue{subtype:"killing"} run data modify storage w:temp clue.subtype set value "none"
execute as @s[tag=deceived] if data storage w:temp clue{subtype:"investigative"} run data modify storage w:temp clue.subtype set value "evily"
execute as @s[tag=deceived] if data storage w:temp clue{subtype:"evil"} run data modify storage w:temp clue.type set value "support"

execute if data storage w:temp clue{type:"culty"} run data modify storage w:temp clue.type set value "cult"
execute if data storage w:temp clue{type:"towny"} run data modify storage w:temp clue.type set value "town"
execute if data storage w:temp clue{subtype:"evily"} run data modify storage w:temp clue.subtype set value "evil"

execute if data storage w:temp clue{type:"town",subtype:"support"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:green,text:" is helpful"}]
execute if data storage w:temp clue{type:"town",subtype:"power"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:green,text:" leads a just cause"}]
execute if data storage w:temp clue{type:"cult",subtype:"power"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:red,text:" leads an unjust cause"}]
execute if data storage w:temp clue{type:"cult",subtype:"support"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:red,text:" supports an unjust cause"}]
execute if data storage w:temp clue{subtype:"killing"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:gold,text:" can kill"}]
execute if data storage w:temp clue{subtype:"investigative"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:green,text:" supports a just cause"}]
execute if data storage w:temp clue{subtype:"evil"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,selector:"@a[tag=investigate]"},{color:red,text:" is evil"}]
execute if data storage w:temp clue{subtype:"none"} run tellraw @s [{text:"[Investigation]: ",color:green},{color:white,text:"There is nothing interesting about "},{color:white,selector:"@a[tag=investigate]"}]


#tellraw @a [{storage:"w:temp",nbt:"clue"}]
tag @a remove investigate