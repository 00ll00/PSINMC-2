#as player
#FIXME fix the state
function ps:focus/record1

execute if score @s PS.tools.wkpath matches 0 at 0-0110-5053-0-1 align xyz unless entity @e[tag=PS.path,dx=0,dy=0,dz=0] run function ps:tools/pen/dn/newpath
execute at 0-0110-5053-0-1 align xyz as @e[tag=PS.path,dx=0,dy=0,dz=0,limit=1] run function ps:tools/pen/dn/readpath

execute if data storage ps:players storage.data.tools.pen{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.h1,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.pen.state set value "hd_hdl1-2"
execute if data storage ps:players storage.data.tools.pen{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.h2,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.pen.state set value "hd_hdl2-1"
execute if data storage ps:players storage.data.tools.pen{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.a,dx=0,dy=0,dz=0] run data modify storage ps:players storage.data.tools.pen.state set value "hd_geth"
execute if data storage ps:players storage.data.tools.pen{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz unless entity @e[tag=PS.path,dx=0,dy=0,dz=0] run function ps:tools/pen/dn/newanchor
execute if data storage ps:players storage.data.tools.pen{state:""} if score @s PS.tools.wkpath matches 1.. at 0-0110-5053-0-1 align xyz if entity @e[tag=PS.path,tag=PS.path.p,tag=!PS.path.a,dx=0,dy=0,dz=0] run function ps:tools/pen/dn/newanchor

function ps:players/storage/markdirty

execute if data storage ps:players storage.data.tools.pen{state:"hd_geth"} run kill @e[tag=PS.path.h,tag=PS.path.working]