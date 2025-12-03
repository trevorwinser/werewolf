scoreboard players set temp storage 2
scoreboard players operation role.halfamount storage = role.amount storage
scoreboard players operation role.halfamount storage /= temp storage
execute if score total online matches ..3 run title @a subtitle "You must have 4+ players to start!"
execute if score total online matches ..3 run return run function w:start/fail1
execute unless score role.amount storage = total online run title @a subtitle "You must have as many roles as players!"
execute unless score role.amount storage = total online run return run function w:start/fail1
execute if score role.townamount storage < role.cultamount storage unless score role.townamount storage matches 0 run title @a subtitle "The town must be a majority!"
execute if score role.townamount storage < role.cultamount storage unless score role.townamount storage matches 0 run return run function w:start/fail1
execute if score role.cultamount storage >= role.halfamount storage run title @a subtitle "The cult cannot be majority!"
execute if score role.cultamount storage >= role.halfamount storage run return run function w:start/fail1
execute if score role.executioner storage > role.townamount storage run title @a subtitle "The executioner requires a town role!"
execute if score role.executioner storage > role.townamount storage run return run function w:start/fail1

schedule function w:start/start 1t