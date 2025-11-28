data modify storage w:temp for_loop.replace set value false
function w:start/random_role with storage w:temp for_loop

#execute if data storage w:temp for_loop{replace:false} run say UNSUCCESSFUL

execute if data storage w:temp for_loop{replace:false} run function w:start/random_role with storage w:temp for_loop

$execute if data storage w:temp for_loop{replace:true} run data modify storage w:config role.available[$(start)] set from storage w:temp for_loop.new_role 

#execute if data storage w:temp for_loop{replace:true} run say SUCCESSFUL