#as player

function ps:focus/record1

execute at 0-0110-5053-0-1 align xyz as @e[tag=PS.path,dx=0,dy=0,dz=0,limit=1] run function ps:tools/anchor/dn/readpath

execute if data storage ps:players storage.data.tools.anchor{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.h1,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.anchor.state set value "hd_hdl1"
execute if data storage ps:players storage.data.tools.anchor{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.h2,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.anchor.state set value "hd_hdl2"
execute if data storage ps:players storage.data.tools.anchor{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.a,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.anchor.state set value "hd_geth"

function ps:players/storage/markdirty