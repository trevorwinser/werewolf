data modify storage w:temp any set value false
data modify storage w:temp for_loop.command set value "function w:start/any2 with storage w:temp for_loop"
data modify storage w:temp for_loop.start set value 0
data modify storage w:temp for_loop.step set value 1
execute store result score temp storage run data get storage w:temp role_choice
execute store result storage w:temp for_loop.end int 1 run scoreboard players remove temp storage 1
function w:help/for_loop/start with storage w:temp for_loop
execute if data storage w:temp {any:true} run say test1
execute if data storage w:temp {any:false} run say test2
return run data get storage w:temp any
return 0