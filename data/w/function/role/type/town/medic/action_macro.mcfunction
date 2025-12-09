$tag @a[tag=player_$(target)] add healed
execute if entity @a[tag=healed,tag=cultkilled] tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you healed them"}]
execute if entity @a[tag=healed,tag=ignited] tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you could not heal them"}]
execute if entity @a[tag=healed,tag=mauled] tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you could not heal them"}]
execute if entity @a[tag=healed,tag=sheriffkilled] tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you healed them"}]
execute if entity @a[tag=healed,tag=veterankilled] tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you healed them"}]
execute if entity @a[tag=healed,tag=serialkilled] unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you healed them"}]
execute if entity @a[tag=healed,tag=serialkilled] if entity @a[tag=serialkiller,scores={role_uses=3..}] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=healed,tag=cultkilled]"},{color:white,text:" was attacked last night, but you could not heal them"}]

tag @a[tag=healed] remove cultkilled
tag @a[tag=healed] remove sheriffkilled
tag @a[tag=healed] remove veterankilled
execute unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tag @a[tag=healed] remove serialkilled
tag @a[tag=healed] remove cultkilled

tellraw @a[tag=healed,tag=!ignited,tag=!mauled] [{text:"[Heal] ",color:green},{text:" You were healed last night"}]
tag @a remove healed