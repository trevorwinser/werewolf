#tp @a 500 50 0 0 90
#gamemode spectator @a
#tag @a add playing
function w:reset

kill @e[type=interaction]

function w:start/decide_roles/load

function w:start/assign_roles/load

function w:start/display_roles/load

schedule function w:game/load 5s