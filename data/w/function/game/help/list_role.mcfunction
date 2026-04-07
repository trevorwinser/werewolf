data remove storage w:temp temp_role
$execute if data storage w:config role.available[$(start)] run function w:help/role/set_temp_role {source:"w:config",location:"role.available",index:$(start)}
execute if data storage w:temp temp_role run function w:game/help/list_role_macro with storage w:temp temp_role