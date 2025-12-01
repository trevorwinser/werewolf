function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Edit Roles",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/button {Pos:"29 1 -3.0",rotation:90,text:"Town\n",color:"white",scale:1.5,command:"function w:config/section/roles/town/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/button {Pos:"29 1 0",rotation:90,text:"Neutral\n",color:"white",scale:1.5,command:"function w:config/section/roles/neutral/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/add_or_remove {Pos:"29 2 0",rotation:90,text:"Any",path:"role.any",max:"score role.amount storage matches ..10",min:"score role.any storage matches 1.."}
function w:config/display/button {Pos:"29 1 4.0",rotation:90,text:"Cult\n",color:"white",scale:1.5,command:"function w:config/section/roles/cult/load",sound:"minecraft:block.wooden_button.click_on"}