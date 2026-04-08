scoreboard players set temp storage 2
scoreboard players operation role.halfamount storage = role.amount storage
scoreboard players operation role.halfamount storage /= temp storage
scoreboard players operation role.remainder storage = role.amount storage
scoreboard players operation role.remainder storage %= temp storage
execute if score role.remainder storage matches 1 run scoreboard players operation role.halfamount storage += role.remainder storage

execute if score total online matches ..3 run title @a subtitle "You must have 4+ players to start!"
execute if score total online matches ..3 run return run function w:start/fail1

execute unless score role.amount storage = total online run title @a subtitle "You must have as many roles as players!"
execute unless score role.amount storage = total online run return run function w:start/fail1

execute if score role.townamount storage = role.amount storage run title @a subtitle "The Town cannot be all roles"
execute if score role.townamount storage = role.amount storage run return run function w:start/fail1

#execute if score role.townamount storage < role.cultamount storage unless score role.townamount storage matches 0 run title @a subtitle "The Town must be a majority!"
#execute if score role.townamount storage < role.cultamount storage unless score role.townamount storage matches 0 run return run function w:start/fail1

#execute if score role.cultamount storage >= role.halfamount storage run title @a subtitle "The Cult cannot be majority!"
#execute if score role.cultamount storage >= role.halfamount storage run return run function w:start/fail1

execute if score role.executioner storage > role.townamount storage run title @a subtitle "The Executioner requires a town role!"
execute if score role.executioner storage > role.townamount storage run return run function w:start/fail1

execute if score role.executioner storage matches 1 if score role.townamount storage matches 1 if score role.mayor storage matches 1 run title @a subtitle "The Executioner cannot execute the Mayor!"
execute if score role.executioner storage matches 1 if score role.townamount storage matches 1 if score role.mayor storage matches 1 run return run function w:start/fail1

schedule function w:start/start 1t