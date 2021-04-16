#as player

scoreboard players set #tools.anchor.hd.temp PS.mem 0
execute store success score #tools.anchor.hd.temp PS.mem if data storage ps:players storage.data.tools.anchor{state:"hd_hdl1"} run data modify storage ps:players storage.data.tools.anchor.state set value "hd_hdl1-2"
execute store success score #tools.anchor.hd.temp PS.mem if data storage ps:players storage.data.tools.anchor{state:"hd_hdl2"} run data modify storage ps:players storage.data.tools.anchor.state set value "hd_hdl2-1"
execute if score #tools.anchor.hd.temp PS.mem matches 1 run function ps:players/storage/markdirty

execute if data storage ps:players storage.data.tools.anchor{state:"hd_hdl1-2"} run function ps:tools/anchor/hd/hdl1_2
execute if data storage ps:players storage.data.tools.anchor{state:"hd_hdl2-1"} run function ps:tools/anchor/hd/hdl2_1