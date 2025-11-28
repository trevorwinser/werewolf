function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Evil",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/button {Pos:"29 1 -1.0",rotation:90,text:"Cult\n",color:"white",scale:1.5,command:"function w:config/section/roles/evil/cult/load",sound:"minecraft:block.wooden_button.click_on"}
#function w:config/display/button {Pos:"29 1 2.0",rotation:90,text:"Individual\n",color:"white",scale:1.5,command:"function w:config/section/roles/evil/individual/load",sound:"minecraft:block.wooden_button.click_on"}