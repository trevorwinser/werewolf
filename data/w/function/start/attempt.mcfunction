execute if score total online matches ..3 run title @a subtitle "You must have 4+ players to start!"
execute if score total online matches ..3 run return run function w:start/fail1

schedule function w:start/start 1t