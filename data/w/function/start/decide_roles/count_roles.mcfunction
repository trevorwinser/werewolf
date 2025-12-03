scoreboard players set role.amount storage 0
scoreboard players set role.townamount storage 0
scoreboard players set role.neutralamount storage 0
scoreboard players set role.cultamount storage 0
scoreboard players set role.individualamount storage 0

data modify storage w:temp role_score_loop.name set value "role_score_loop"
data modify storage w:temp role_score_loop.start set value 0
data modify storage w:temp role_score_loop.step set value 1
execute store result score temp storage run data get storage w:temp role.available
execute store result storage w:temp role_score_loop.end int 1 run scoreboard players remove temp storage 1
data modify storage w:temp role_score_loop.command set value "function w:start/help/update_role_score with storage w:temp role_score_loop"
function w:help/unique_loop/start with storage w:temp role_score_loop

scoreboard players set temp storage 2
scoreboard players operation role.halfamount storage = role.amount storage
scoreboard players operation role.halfamount storage /= temp storage