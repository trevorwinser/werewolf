execute as @a[tag=town,tag=!spectator] unless entity @a[tag=cult,tag=!spectator] unless entity @a[tag=neutral,tag=killing,tag=!spectator] run tag @a[tag=town] add won
execute as @a[tag=town,tag=!spectator] unless entity @a[tag=cult,tag=!spectator] unless entity @a[tag=neutral,tag=killing,tag=!spectator] run return 1

execute as @a[tag=cult,tag=!spectator] unless entity @a[tag=town,tag=!spectator] unless entity @a[tag=neutral,tag=killing,tag=!spectator] run tag @a[tag=cult] add won
execute as @a[tag=cult,tag=!spectator] unless entity @a[tag=town,tag=!spectator] unless entity @a[tag=neutral,tag=killing,tag=!spectator] run return 1

execute as @a[tag=vampire,tag=!spectator] unless entity @a[tag=!vampire,tag=!spectator] run tag @a[tag=vampire] add won
execute as @a[tag=vampire,tag=!spectator] unless entity @a[tag=!vampire,tag=!spectator] run return 1

execute as @a[tag=serialkiller,tag=!spectator] unless entity @a[tag=!serialkiller,tag=!spectator] run tag @s[tag=serialkiller] add won
execute as @a[tag=serialkiller,tag=!spectator] unless entity @a[tag=!serialkiller,tag=!spectator] run return 1

execute as @a[tag=werewolf,tag=!spectator] unless entity @a[tag=!werewolf,tag=!spectator] run tag @s[tag=werewolf] add won
execute as @a[tag=werewolf,tag=!spectator] unless entity @a[tag=!werewolf,tag=!spectator] run return 1

execute as @a[tag=arsonist,tag=!spectator] unless entity @a[tag=!arsonist,tag=!spectator] run tag @s[tag=arsonist] add won
execute as @a[tag=arsonist,tag=!spectator] unless entity @a[tag=!arsonist,tag=!spectator] run return 1

return 0