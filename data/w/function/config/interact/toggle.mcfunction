$execute if $(off) if score $(path) storage matches 1 run data modify entity @n[type=text_display,nbt={data:{path:"$(path)"}}] text.color set value red
$execute if $(off) if score $(path) storage matches 1 run data modify entity @s data.value set value 0
$execute if $(off) if score $(path) storage matches 1 run function w:config/interact/operation with entity @s data
$execute if $(on) if data entity @s interaction if score $(path) storage matches 0 run data modify entity @n[type=text_display,nbt={data:{path:"$(path)"}}] text.color set value green
$execute if $(on) if data entity @s interaction if score $(path) storage matches 0 run data modify entity @s data.value set value 1
$execute if $(on) if data entity @s interaction if score $(path) storage matches 0 run function w:config/interact/operation with entity @s data




#execute as @s[nbt={data:{path:"game.music"}}] if score game.music storage matches 1 as @a run function w:sound/handle_music