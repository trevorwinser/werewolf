function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Neutral",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/add_or_remove {Pos:"29 2 0",rotation:90,text:"Any (Neutral)",path:"role.anyneutral",max:"score role.amount storage matches ..10 if score role.neutralamount storage < role.neutralamount max",min:"score role.anyneutral storage matches 1.."}

function w:config/display/button {Pos:"29 1 -1.0",rotation:90,text:"Evil\n",color:"white",scale:1.5,command:"function w:config/section/roles/neutral/evil/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/button {Pos:"29 1 2.0",rotation:90,text:"Killing\n",color:"white",scale:1.5,command:"function w:config/section/roles/neutral/killing/load",sound:"minecraft:block.wooden_button.click_on"}