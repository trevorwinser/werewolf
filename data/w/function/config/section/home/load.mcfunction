function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Home",color:white,scale:2}
function w:config/display/button {Pos:"29 1 -1.0",rotation:90,text:"Start\n",color:"white",scale:1.5,command:"function w:start/attempt",sound:"minecraft:block.amethyst_block.resonate"}
#function w:config/display/button {Pos:"29 1 -3.0",rotation:90,text:"Settings\n",color:"white",scale:1.5,command:"function w:config/section/settings/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/button {Pos:"29 1 2.0",rotation:90,text:"Roles\n",color:"white",scale:1.5,command:"function w:config/section/roles/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/update/storage1 {path:"w:config"}