#as player

execute if data storage ps:players storage.data.tools.pen{state:"hd_geth"} run function ps:tools/pen/up/geth
execute if data storage ps:players storage.data.tools.pen{state:"hd_a"} run function ps:tools/pen/up/geth

execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka run function ps:path/anchor/gen/h1h2

data modify storage ps:players storage.data.tools.pen.state set value ""
function ps:players/storage/markdirty