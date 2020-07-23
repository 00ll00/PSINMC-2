#as player
scoreboard players set #cube.changemode.temp PS.mem 0
execute if score #cube.changemode.temp PS.mem matches 0 store success score #cube.changemode.temp PS.mem if data storage ps:players storage.data.tools.cube{state:"hd_x"}
execute if score #cube.changemode.temp PS.mem matches 0 store success score #cube.changemode.temp PS.mem if data storage ps:players storage.data.tools.cube{state:"hd_y"}
execute if score #cube.changemode.temp PS.mem matches 0 store success score #cube.changemode.temp PS.mem if data storage ps:players storage.data.tools.cube{state:"hd_z"}
execute if score #cube.changemode.temp PS.mem matches 1 run function ps:tools/cube/changemode_