data modify storage w:temp unique_loop.command set value ""
data modify storage w:temp unique_loop.start set value 0
data modify storage w:temp unique_loop.step set value 1
execute store result score temp storage run data get storage w:temp role.town