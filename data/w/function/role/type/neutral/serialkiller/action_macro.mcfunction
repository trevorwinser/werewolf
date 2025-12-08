$tag @a[tag=player_$(target)] add serialkilled
# Note:
# Murdered players are killed regardless of status
execute if score @s role_uses matches 3.. run tag @a[tag=serialkilled] add murdered