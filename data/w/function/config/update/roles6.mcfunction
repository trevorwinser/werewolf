execute unless entity @e[tag=role_list] run return 0
$execute unless data storage w:config role.available[$(start)] run return 0
data modify storage w:temp source set value "w:temp"
data modify storage w:temp path set value "string1"
data modify storage w:temp string1 set value "29 "
execute store result storage w:temp string2 double 0.01 run scoreboard players get temp storage
data modify storage w:temp string2 set string storage w:temp string2 0 4
function w:help/string/concatenate with storage w:temp

data modify storage w:temp source set value "w:temp"
data modify storage w:temp path set value "Pos"
data modify storage w:temp string2 set value " 3.1"
function w:help/string/concatenate with storage w:temp

data modify storage w:temp rotation set value "90"

data modify storage w:temp source set value "w:temp"
data modify storage w:temp path set value "path"
data modify storage w:temp string1 set value "role."
$data modify storage w:temp string2 set from storage w:config role.available[$(start)].name
function w:help/string/concatenate with storage w:temp

function w:config/display/remove with storage w:temp
scoreboard players remove temp storage 25

function w:config/update/roles7 with storage w:temp