title @a title ""
title @a subtitle "You must have 4+ players to start!"
function w:sound/play_all {sound:"minecraft:block.note_block.didgeridoo",volume:1,pitch:1}
schedule function w:start/fail2 5t
return fail