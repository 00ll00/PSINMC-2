#as player

execute if data storage ps:players storage.data.tools.anchor{state:"hd_geth"} run function ps:tools/anchor/up/geth

execute if data storage ps:players storage.data.tools.anchor{state:"hd_hdl1"} as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka run function ps:path/anchor/gen/h1
execute if data storage ps:players storage.data.tools.anchor{state:"hd_hdl2"} as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka run function ps:path/anchor/gen/h2

data modify storage ps:players storage.data.tools.anchor.state set value ""
function ps:players/storage/markdirty