team add temp
team join temp @a
execute store result score playing game run team list temp
team remove temp
execute if score playing game matches ..3 run function w:start/not_enough_players
execute if score playing game matches ..3 run return fail
execute if score role.amount storage < playing game run function w:start/not_enough_roles
execute if score role.amount storage < playing game run return fail
function w:start/start