function w:config/reset
function w:config/display/text {Pos:"29 3 0",rotation:90,alignment:"center",text:"Edit Roles",color:white,scale:2}
function w:config/display/button {Pos:"29 2.8 -3.0",rotation:90,text:"⬅",color:"white",scale:4,command:"function w:config/section/roles/edit/load",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/button {Pos:"29 2 -1.0",rotation:90,text:"Hearsay (5)\n",color:"white",scale:1.5,command:"data modify storage w:config role.available set from storage w:config role.preset[0]",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/button {Pos:"29 1 -1.0",rotation:90,text:"Chaos (7)\n",color:"white",scale:1.5,command:"data modify storage w:config role.available set from storage w:config role.preset[3]",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/button {Pos:"29 2 2.0",rotation:90,text:"Twilight (9)\n",color:"white",scale:1.5,command:"data modify storage w:config role.available set from storage w:config role.preset[2]",sound:"minecraft:block.wooden_button.click_on"}

function w:config/display/button {Pos:"29 1 2.0",rotation:90,text:"Us vs. Them (11)\n",color:"white",scale:1.5,command:"data modify storage w:config role.available set from storage w:config role.preset[1]",sound:"minecraft:block.wooden_button.click_on"}


function w:config/display/text {Pos:"29 0.5 0",rotation:90,alignment:"center",text:"Note: Right clicking a preset will automatically replace roles",color:white,scale:0.65}