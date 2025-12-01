function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Neutral (Evil)",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/toggle {Pos:"29 1.2 -1",rotation:90,text:"Sabotager",path:"role.sabotager",id:"tripwire_hook",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.individualamount storage matches ..1",off:"entity @s",info:""}
function w:config/display/toggle {Pos:"29 1.2 1",rotation:90,text:"Jester",path:"role.jester",id:"firework_rocket",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..0",off:"entity @s",info:""}