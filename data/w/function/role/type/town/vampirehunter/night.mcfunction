clear @s
scoreboard players set @s menu 0

execute if score vampire active_roles matches 2.. run tellraw @s [{text:"There are "},{score:{name:"vampire",objective:"active_roles"}},{text:" vampires"}]
execute if score vampire active_roles matches 1 run tellraw @s [{text:"There is "},{score:{name:"vampire",objective:"active_roles"}},{text:" vampire"}]

item replace entity @s[tag=!can_convert] container.4 with red_dye[consumable={consume_seconds:10000},custom_name={text:"Right Click to Visit",italic:false,color:red}]