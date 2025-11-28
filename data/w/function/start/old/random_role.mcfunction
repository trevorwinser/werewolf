execute store result score high game run data get storage w:temp role_choice
execute store result storage w:temp high int 1 run scoreboard players remove high game 1
data modify storage w:temp low set value 0
execute store result storage w:temp roll int 1 run function w:help/roll/get with storage w:temp
execute store result storage w:temp for_loop.replace byte 1 run return run function w:start/replace_any6 with storage w:temp