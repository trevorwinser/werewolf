tag @s add displayed
tellraw @s ""
tellraw @s "Active Roles:"
function w:help/for_loop/start {command:"function w:game/help/list_role with storage w:temp for_loop",start:0,step:1,end:10}
tag @s remove displayed