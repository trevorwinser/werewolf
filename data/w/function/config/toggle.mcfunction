$execute if score $(path) storage matches 1 run data modify entity @n[type=text_display,nbt={data:{path:"$(path)"}}] text.color set value red
$execute if score $(path) storage matches 1 run data modify entity @s data.value set value 0
$execute if score $(path) storage matches 1 run function hs:config/operation with entity @s data
$execute if data entity @s interaction if score $(path) storage matches 0 run data modify entity @n[type=text_display,nbt={data:{path:"$(path)"}}] text.color set value green
$execute if data entity @s interaction if score $(path) storage matches 0 run data modify entity @s data.value set value 1
$execute if data entity @s interaction if score $(path) storage matches 0 run function w:config/operation with entity @s data

function w:config/update_size with entity @s data

function w:config/reload_roles



#execute as @s[nbt={data:{path:"game.music"}}] if score game.music storage matches 1 as @a run function w:sound/handle_music