$title @a title {"text": "","extra": [{"text":"$(time) "},{"score":{"name":"time","objective":"game"}}]}
execute if data storage w:temp state{time:"Night"} if score time game matches 1 run title @a subtitle "Right click items to use them"
$execute if data storage w:temp state{time:"Day"} run tellraw @a [{"text":"$(time) "},{"score":{"name":"time","objective":"game"}}]
$execute if data storage w:temp state{time:"Night"} run tellraw @a [{"text":"$(time) $(moon) "},{"score":{"name":"time","objective":"game"}}]