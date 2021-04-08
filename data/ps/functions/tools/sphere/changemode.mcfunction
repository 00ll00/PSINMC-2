#as player
scoreboard players set #sphere.changemode.temp PS.mem 0
execute if score #sphere.changemode.temp PS.mem matches 0 store success score #sphere.changemode.temp PS.mem if data storage ps:players storage.data.tools.sphere{state:"hd_x"}
execute if score #sphere.changemode.temp PS.mem matches 0 store success score #sphere.changemode.temp PS.mem if data storage ps:players storage.data.tools.sphere{state:"hd_y"}
execute if score #sphere.changemode.temp PS.mem matches 0 store success score #sphere.changemode.temp PS.mem if data storage ps:players storage.data.tools.sphere{state:"hd_z"}
execute if score #sphere.changemode.temp PS.mem matches 1 run function ps:tools/sphere/changemode_