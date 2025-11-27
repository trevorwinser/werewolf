$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon text_display ^0 ^0.3 ^0 {Tags:["config"],Rotation:[$(rotation)f,0f],view_range:20f,billboard:"fixed",shadow:0b,see_through:0b,alignment:"center",text:"$(text)",background:16777215}
$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon text_display ^0 ^0 ^0 {Tags:["config"],Rotation:[$(rotation)f,0f],data:{path:$(path),type:"value"},view_range:20f,billboard:"fixed",shadow:0b,see_through:0b,alignment:"center",text:"value",background:16777215}
$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon text_display ^0.3 ^0 ^0 {Tags:["config"],Rotation:[$(rotation)f,0f],view_range:20f,billboard:"fixed",shadow:0b,see_through:0b,alignment:"center",text:"+",background:16777215}
$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon text_display ^-0.3 ^0 ^0 {Tags:["config"],Rotation:[$(rotation)f,0f],view_range:20f,billboard:"fixed",shadow:0b,see_through:0b,alignment:"center",text:"-",background:16777215}
$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon interaction ^0.3 ^0 ^0 {Tags:["config"],data:{condition:"$(max)",operation:"add",path:$(path),value:1},width:0.35,height:0.35}
$execute positioned $(Pos) rotated $(rotation) 0 positioned ^ ^ ^-0.45 run summon interaction ^-0.3 ^0 ^0 {Tags:["config"],data:{condition:"$(min)",operation:"remove",path:$(path),value:1},width:0.35,height:0.35}

# score $(path) storage < $(path) max
# score $(path) storage > $(path) min