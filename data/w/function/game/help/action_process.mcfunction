# Note:
# When manipulator selects swapper as one of the targets, the swapper takes on both targets from the manipulator (swaps themself and the other target)
execute as @a[tag=manipulator] run function w:role/handle {path:"action"}

execute as @a[tag=swapper] run function w:role/handle {path:"action"}

# Note:
# When the fall guy takes the place of one of their cult members, they will essentially be twice as visitable.
execute as @a[tag=fallguy] run function w:role/handle {path:"action"}

# Note:
# Cult leaders replaces acolyte's target if there is an alive acolyte
execute as @a[tag=cultleader] run function w:role/handle {path:"action"}










# Roles that aren't targetable: Mayor, Jester, Executioner, Veteran, Initiate