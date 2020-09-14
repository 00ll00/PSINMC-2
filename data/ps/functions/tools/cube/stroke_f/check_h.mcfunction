#as stroke at @s align xyz
#TODO this not work well
scoreboard players set #cube.temp.reg PS.mem 0
scoreboard players set #cube.temp.reg.i PS.mem 0
scoreboard players set #cube.temp.reg.x PS.mem 0
scoreboard players set #cube.temp.reg.y PS.mem 0
scoreboard players set #cube.temp.reg.z PS.mem 0
execute if score #tools.cube.det PS.mem matches 0.. store success score #cube.temp.reg.x PS.mem if score $math.mat.o.1.1 PS.mem matches 0.. if score $math.mat.o.1.1 PS.mem <= #tools.cube.det PS.mem
execute if score #tools.cube.det PS.mem matches ..-1 store success score #cube.temp.reg.x PS.mem if score $math.mat.o.1.1 PS.mem matches ..0 if score $math.mat.o.1.1 PS.mem >= #tools.cube.det PS.mem
execute if score #tools.cube.det PS.mem matches 0.. store success score #cube.temp.reg.y PS.mem if score $math.mat.o.2.1 PS.mem matches 0.. if score $math.mat.o.2.1 PS.mem <= #tools.cube.det PS.mem
execute if score #tools.cube.det PS.mem matches ..-1 store success score #cube.temp.reg.y PS.mem if score $math.mat.o.2.1 PS.mem matches ..0 if score $math.mat.o.2.1 PS.mem >= #tools.cube.det PS.mem
execute if score #tools.cube.det PS.mem matches 0.. store success score #cube.temp.reg.z PS.mem if score $math.mat.o.3.1 PS.mem matches 0.. if score $math.mat.o.3.1 PS.mem <= #tools.cube.det PS.mem
execute if score #tools.cube.det PS.mem matches ..-1 store success score #cube.temp.reg.z PS.mem if score $math.mat.o.3.1 PS.mem matches ..0 if score $math.mat.o.3.1 PS.mem >= #tools.cube.det PS.mem
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.1.1 PS.mem matches 0
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.1.1 PS.mem = #tools.cube.det PS.mem
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.2.1 PS.mem matches 0
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.2.1 PS.mem = #tools.cube.det PS.mem
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.3.1 PS.mem matches 0
execute if score #cube.temp.reg.i PS.mem matches 0 store success score #cube.temp.reg PS.mem if score $math.mat.o.3.1 PS.mem = #tools.cube.det PS.mem

execute if score #cube.temp.reg.x PS.mem matches 1 if score #cube.temp.reg.y PS.mem matches 1 if score #cube.temp.reg.z PS.mem matches 1 if score #cube.temp.reg.i PS.mem matches 1 run scoreboard players set #cube.temp.reg PS.mem 1