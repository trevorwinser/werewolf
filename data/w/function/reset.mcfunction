function w:end/remove_roles/load

scoreboard objectives remove display
scoreboard objectives remove judgement
scoreboard objectives remove votes
scoreboard objectives remove active_roles
scoreboard objectives remove index
scoreboard objectives remove target1
scoreboard objectives remove target2
scoreboard objectives remove role_state
scoreboard objectives remove role_uses
scoreboard objectives remove menu

bossbar remove stage

tag @a remove 0
tag @a remove 1
tag @a remove 2
tag @a remove 3
tag @a remove 4
tag @a remove 5
tag @a remove 6
tag @a remove 7
tag @a remove 8
tag @a remove 9
tag @a remove 10

tag @a remove player_1
tag @a remove player_2
tag @a remove player_3
tag @a remove player_4
tag @a remove player_5
tag @a remove player_6
tag @a remove player_7
tag @a remove player_8
tag @a remove player_9
tag @a remove player_10
tag @a remove player_11

team remove cult
team remove spectator
tag @a remove checked
tag @a remove cult