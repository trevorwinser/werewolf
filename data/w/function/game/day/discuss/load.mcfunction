scoreboard players set remaining timer 30
execute as @a[tag=!spectator] run scoreboard players add remaining timer 5
execute store result bossbar minecraft:stage max run scoreboard players get remaining timer
function w:game/day/load
function w:game/help/action_process
function w:game/help/status_process
execute as @a[tag=executioner] if entity @a[tag=town,tag=spectator,tag=target] run function w:game/help/convert_to {role:"jester"}

gamerule advance_time true

tag @a remove add_time
item replace entity @a container.8 with clock[consumable={consume_seconds:10000},custom_name={text:"Right Click to Add Time",italic:false,color:yellow}]
