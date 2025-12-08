$execute if entity @a[tag=player_$(target),tag=mayor] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=jester] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=executioner] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=veteran] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=initiate] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=deflector] run tellraw @s [{text:"You cannot manipulate "},{selector:"@a[tag=player_$(target)]"}]

$tellraw @a[tag=player_$(target),tag=mayor] "The manipulation had no effect"
$tellraw @a[tag=player_$(target),tag=jester] "The manipulation had no effect"
$tellraw @a[tag=player_$(target),tag=executioner] "The manipulation had no effect"
$tellraw @a[tag=player_$(target),tag=veteran] "The manipulation had no effect"
$tellraw @a[tag=player_$(target),tag=initiate] "The manipulation had no effect"
$tellraw @a[tag=player_$(target),tag=deflector] "The manipulation had no effect"

# Note:
# Medic will heal themselves if they are target 1 and target 2