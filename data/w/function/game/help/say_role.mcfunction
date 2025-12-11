data remove storage w:temp temp_role
$execute if data storage w:config role.available[$(start)] run function w:help/role/set_temp_role {source:"w:config",location:"role.available",index:$(start)}
execute if data storage w:temp temp_role run tellraw @a [{storage:"w:temp",nbt:"temp_role.display"}]