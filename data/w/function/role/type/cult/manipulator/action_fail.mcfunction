$execute if entity @a[tag=player_$(target),tag=mayor] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=jester] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=executioner] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=veteran] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=initiate] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=deflector] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]
$execute if entity @a[tag=player_$(target),tag=survivor] run tellraw @s [{color:red,text:"[Manipulation] "},{color:white,text:"You cannot manipulate "},{color:white,selector:"@a[tag=player_$(target)]"}]

$tellraw @a[tag=player_$(target),tag=mayor] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=jester] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=executioner] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=veteran] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=initiate] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=deflector] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]
$tellraw @a[tag=player_$(target),tag=survivor] [{color:red,text:"[Manipulation] "},{color:white,text:"The manipulation had no effect"}]

# Note:
# Medic will heal themselves if they are target 1 and target 2