# Night = View Players Not Self
# Day = Vote Guilty
execute if data storage w:temp state{time:"Night"} run tellraw @s "Who would you like to kill?"
execute if data storage w:temp state{time:"Night"} run function w:role/menu/players_not_self1

execute if data storage w:temp state{stage:"Judge"} run scoreboard players set @s judgement -1
execute if data storage w:temp state{stage:"Judge"} run tellraw @s [{text:"You voted ",color:white},{text:"Guilty",color:red}]