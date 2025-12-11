execute if data storage w:temp state{time:"Day"} run function w:role/type/generic/back
execute if data storage w:temp state{time:"Night"} if score @s menu matches 1 run function w:role/handle {path:"night"}
execute if data storage w:temp state{time:"Night"} if score @s menu matches 2 run function w:role/menu/players_not_tag1 {tag:"cult"}