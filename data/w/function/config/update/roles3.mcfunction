$execute store result score temp storage run data get storage w:config role.$(name)
#$say $(name)
#function w:help/inner_for_loop/test with storage w:temp inner_for_loop
return run execute store result storage w:temp inner_for_loop.end int 1 run scoreboard players remove temp storage 1
