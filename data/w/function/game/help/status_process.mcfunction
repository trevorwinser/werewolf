execute as @a[tag=cultkilled,tag=!invulnerable] run function w:game/help/die {reason:"was killed by the Cult"}

execute as @a[tag=ignited] run function w:game/help/die {reason:"was burnt by the Arsonist"}

execute as @a[tag=mauled,tag=!invulnerable] run function w:game/help/die {reason:"was mauled by the Werewolf"}

execute as @a[tag=sheriffkilled,tag=!invulnerable] run function w:game/help/die {reason:"was killed by the Sheriff"}

execute as @a[tag=veterankilled] run function w:game/help/die {reason:"was killed visiting the Veteran"}

execute as @a[tag=serialkilled,tag=!invulnerable] run function w:game/help/die {reason:"was killed by the Serial Killer"}
execute as @a[tag=serialkilled,tag=!invulnerable] run scoreboard players add @a[tag=serialkiller] role_uses 1
execute as @a[tag=serialkilled,tag=!invulnerable] run tellraw @a[tag=serialkiller,scores={role_uses=3}] "Your power grows stronger"
execute if entity @a[tag=serialkiller,scores={role_uses=3..}] as @a[tag=serialkilled,tag=!spectator] run function w:game/help/die {reason:"was killed by the Serial Killer"}

execute as @a[tag=bit,tag=!invulnerable] if score vampire active_roles matches 4 run function w:game/help/die {reason:"was killed by a Vampire"}
execute as @a[tag=bit,tag=!invulnerable,tag=!spectator] if predicate w:50in100 run function w:game/help/die {reason:"was killed by a Vampire"}
execute as @a[tag=bit,tag=mayor,tag=!spectator] run function w:game/help/die {reason:"was killed by a Vampire"}

execute as @a[tag=staked,tag=vampire] run function w:game/help/die {reason:"encountered the Vampire Hunter"}

tellraw @a[tag=!invulnerable,tag=cultkilled] [{color:red,text:"[Attack] "},{color:white,text:"You were attacked last night!"}]
tellraw @a[tag=!invulnerable,tag=mauled] [{color:red,text:"[Attack] "},{color:white,text:"You were attacked last night!"}]
tellraw @a[tag=!invulnerable,tag=veterankilled] [{color:red,text:"[Attack] "},{color:white,text:"You were attacked last night!"}]
tellraw @a[tag=!invulnerable,tag=serialkilled] [{color:red,text:"[Attack] "},{color:white,text:"You were attacked last night!"}]

tag @a remove cultkilled
tag @a remove mauled
tag @a remove veterankilled
tag @a remove serialkilled
tag @a[tag=!werewolf] remove invulnerable
tag @a remove deceived
tag @a remove ignited
tag @a remove staked
tag @a remove blocked
