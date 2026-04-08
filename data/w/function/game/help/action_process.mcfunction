## Identified by player display 
#data modify storage w:temp location set value [{not_player:0},{player:1},{player:2},{player:3},{player:4},{player:5},{player:6},{player:7},{player:8},{player:9},{player:10},{player:11}]
## Indexed by player index valued based on player display
## Ex: Player w/ index 0 visits player with display vlaue 1
#data modify storage w:temp visits set value [{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0},{visits:0}]

# Note:
# When manipulator selects swapper as one of the targets, the swapper takes on both targets from the manipulator (swaps themself and the other target)

execute as @a[tag=!spectator,tag=chef] run function w:role/handle {path:"action"}

scoreboard players set @a[tag=blocked] target1 0
scoreboard players set @a[tag=blocked] target2 0
tellraw @a[tag=blocked] [{color:red,text:"[Blocked] "},{color:white,text:"Your action was blocked!"}]

execute as @a[tag=!blocked,tag=!spectator,tag=survivor] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=manipulator] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=swapper] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=deflector] run function w:role/handle {path:"action"}

# Note:
# When the fall guy takes the place of one of their cult members, they will essentially be twice as visitable.
execute as @a[tag=!blocked,tag=!spectator,tag=fallguy] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=arsonist] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=cultleader] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=werewolf] run function w:role/handle {path:"action"}



# Generic Killing
execute as @a[tag=!blocked,tag=!spectator,tag=acolyte] run function w:role/handle {path:"action"}
execute as @a[tag=!blocked,tag=!spectator,tag=sheriff] run function w:role/handle {path:"action"}
execute as @a[tag=!blocked,tag=!spectator,tag=serialkiller] run function w:role/handle {path:"action"}

# Conditional Killing
execute unless entity @a[tag=!spectator,tag=vampire,tag=youngest] run tag @r[tag=!spectator,tag=vampire] add youngest
execute as @a[tag=!blocked,tag=!spectator,tag=vampire,tag=youngest] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=vampirehunter] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=veteran] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=medic] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=scout] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=deputy] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=detective] run function w:role/handle {path:"action"}

execute as @a[tag=!blocked,tag=!spectator,tag=mayor] run function w:role/handle {path:"action"}