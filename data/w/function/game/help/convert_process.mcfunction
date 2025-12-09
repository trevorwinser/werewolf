execute as @a[tag=!spectator,tag=can_convert,tag=bit] run function w:game/help/convert_to {role:"vampire"}
execute as @a[tag=!spectator,tag=can_convert,tag=acolyte] unless score cultleader active_roles matches 0 run function w:game/help/convert_to {role:"cultleader"}
execute as @a[tag=!spectator,tag=can_convert,tag=manipulator] unless score acolyte active_roles matches 0 run function w:game/help/convert_to {role:"acolyte"}
execute as @a[tag=!spectator,tag=can_convert,tag=fallguy] unless score acolyte active_roles matches 0 run function w:game/help/convert_to {role:"acolyte"}
execute as @a[tag=!spectator,tag=can_convert,tag=initiate] unless score manipulator active_roles matches 0 run function w:game/help/convert_to {role:"manipulator"}
execute as @a[tag=!spectator,tag=can_convert,tag=initiate] unless score fallguy active_roles matches 0 run function w:game/help/convert_to {role:"fallguy"}
execute as @a[tag=!spectator,tag=can_convert,tag=deputy] unless score sheriff active_roles matches 0 run function w:game/help/convert_to {role:"sheriff"}

tag @a remove bit
tag @a remove can_convert