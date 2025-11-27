function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Roles",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/home/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/button {Pos:"29 1 0",rotation:90,text:"Edit\nRoles",color:"white",scale:1.5,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}
function w:config/display/text {Pos:"29 3 4.0",rotation:90,alignment:"center",text:"Current",color:"white",scale:1.5}
function w:config/display/text {Pos:"29 0 4.0",rotation:90,alignment:"left",text:"1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11",color:"white",scale:1.0}
function w:config/update/roles1