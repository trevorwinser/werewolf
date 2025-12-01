function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Neutral (Killing)",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/neutral/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/toggle {Pos:"29 1 -1",rotation:90,text:"Arsonist",path:"role.arsonist",id:"flint_and_steel",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..3",off:"entity @s",info:""}
function w:config/display/toggle {Pos:"29 1.2 0",rotation:90,text:"Werewolf",path:"role.werewolf",id:"ghast_tear",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..3",off:"entity @s",info:""}
function w:config/display/toggle {Pos:"29 1 1",rotation:90,text:"Vampire",path:"role.vampire",id:"red_candle",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..3",off:"entity @s",info:""}
