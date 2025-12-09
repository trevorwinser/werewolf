scoreboard players set @s target1 0
execute if data storage w:temp state{time:"Night"} run tellraw @s "You will do nothing tonight"
execute if data storage w:temp state{time:"Night"} run scoreboard players set @s target1 0
execute if data storage w:temp state{time:"Night"} run scoreboard players set @s target2 0
execute if data storage w:temp state{time:"Night"} run scoreboard players set @s role_action 0
execute if data storage w:temp state{stage:"Vote"} run scoreboard players set @s target1 0
execute if data storage w:temp state{stage:"Vote"} run tellraw @a [{selector:"@s"},{text:" rescinded their vote"}]
execute if data storage w:temp state{stage:"Judge"} run scoreboard players set @s judgement 0
execute if data storage w:temp state{stage:"Judge"} run tellraw @s [{text:"You voted to ",color:white},{text:"Abstain",color:gray}]