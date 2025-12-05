#$say $(name) is at index: $(index)
$tag @r[tag=$(name),tag=!number_assigned] add $(index)
$scoreboard players set @a[tag=$(index)] index $(index)
tag @s add number_assigned