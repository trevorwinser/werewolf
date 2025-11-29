function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Neutral",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/add_or_remove {Pos:"29 2 0",rotation:90,text:"Any (Neutral)",path:"role.anyneutral",max:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..0",min:"score role.anyneutral storage matches 1.."}
function w:config/display/toggle {Pos:"29 1.2 0",rotation:90,text:"Jester",path:"role.jester",id:"firework_rocket",big:0.7,small:0.5,on:"score role.amount storage matches ..10 if score role.neutralamount storage matches ..0",off:"entity @s",info:""}