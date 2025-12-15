$tag @a[tag=player_$(target)] add healed
$execute if entity @a[tag=player_$(target),tag=healed,tag=cultkilled] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you healed them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=ignited] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you could not heal them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=mauled] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you could not heal them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=sheriffkilled] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you healed them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=veterankilled] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you healed them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=serialkilled] unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you healed them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=serialkilled] if entity @a[tag=serialkiller,scores={role_uses=3..}] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you could not heal them"}]
$execute if entity @a[tag=player_$(target),tag=healed,tag=bit] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was attacked last night, but you healed them"}]

$tellraw @a[tag=player_$(target),tag=healed,tag=cultkilled,tag=sheriffkilled,tag=veterankilled,tag=!ignited,tag=!mauled] [{text:"[Heal] ",color:green},{color:white,text:"You were healed last night"}]
$execute unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tellraw @a[tag=player_$(target),tag=healed,tag=serialkilled] [{text:"[Heal] ",color:green},{color:white,text:"You were healed last night"}]

$execute if entity @a[tag=player_$(target),tag=healed,tag=!cultkilled,tag=!ignited,tag=!mauled,tag=!sheriffkilled,tag=!veterankilled,tag=!serialkilled] run tellraw @s [{text:"[Heal] ",color:green},{color:white,selector:"@a[tag=player_$(target),tag=healed]"},{color:white,text:" was not attacked last night"}]

$tag @a[tag=player_$(target),tag=healed] remove cultkilled
$tag @a[tag=player_$(target),tag=healed] remove sheriffkilled
$tag @a[tag=player_$(target),tag=healed] remove veterankilled
$execute unless entity @a[tag=serialkiller,scores={role_uses=3..}] run tag @a[tag=player_$(target),tag=healed] remove serialkilled
$tag @a[tag=player_$(target),tag=healed] remove cultkilled

$tag @a[tag=player_$(target),tag=healed] remove sheriffkilled