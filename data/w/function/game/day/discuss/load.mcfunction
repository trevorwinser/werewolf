scoreboard players set remaining timer 60
bossbar set stage max 60
function w:game/day/load
function w:game/help/action_process
function w:game/help/status_process
execute if function w:game/help/win_check run schedule function w:end/load 1t