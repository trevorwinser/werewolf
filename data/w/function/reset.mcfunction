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
scoreboard objectives remove role_action
scoreboard objectives remove menu
scoreboard objectives remove roles

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
team remove vampire
team remove mayor

tag @a remove checked
tag @a remove cult
tag @a remove spectator
tag @a remove target
tag @a remove bit
tag @a remove youngest
tag @a remove won
tag @a remove doused
tag @a remove can_convert

tag @a remove deflected
tag @a remove shameleave
tag @a remove cultkilled
tag @a remove mauled
tag @a remove veterankilled
tag @a remove serialkilled
tag @a remove invulnerable
tag @a remove deceived

tag @a remove fed
tag @a remove well_fed
tag @a remove sick
tag @a remove healed

tag @a remove add_time