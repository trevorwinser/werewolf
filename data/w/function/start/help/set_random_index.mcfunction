$execute store result score temp storage run data get storage w:temp role.$(type)
execute store result storage w:temp high int 1 run scoreboard players remove temp storage 1
data modify storage w:temp low set value 0
execute store result storage w:temp index int 1 run function w:help/roll/get with storage w:temp