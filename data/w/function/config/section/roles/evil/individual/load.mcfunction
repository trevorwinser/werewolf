function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Individual (Evil)",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/evil/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/add_or_remove {Pos:"29 2 0",rotation:90,text:"Any (Individual)",path:"role.anyindividual",max:"score role.amount storage matches ..10",min:"score role.anyindividual storage matches 1.."}
#function w:config/display/toggle {Pos:"29 1.2 -4",rotation:90,text:"Mayor",path:"role.mayor",id:"paper",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1 -3",rotation:90,text:"Sheriff",path:"role.sheriff",id:"bow",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1.2 -2",rotation:90,text:"Deputy",path:"role.deputy",id:"crossbow",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1 -1",rotation:90,text:"Detective",path:"role.detective",id:"spyglass",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
function w:config/display/toggle {Pos:"29 1.2 0",rotation:90,text:"Sabotager",path:"role.sabotager",id:"tripwire_hook",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
function w:config/display/toggle {Pos:"29 1 1",rotation:90,text:"Werewolf",path:"role.werewolf",id:"ghast_tear",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1.2 2",rotation:90,text:"Veteran",path:"role.veteran",id:"iron_sword",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1 3",rotation:90,text:"Deflector",path:"role.deflector",id:"glass",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
#function w:config/display/toggle {Pos:"29 1.2 4",rotation:90,text:"Swapper",path:"role.swapper",id:"ender_pearl",big:0.7,small:0.5,on:"score role.amount storage matches ..10",off:"entity @s",info:""}
