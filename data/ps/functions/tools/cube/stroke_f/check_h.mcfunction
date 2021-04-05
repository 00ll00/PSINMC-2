#as stroke at @s align xyz
#output #cube.temp.reg

#compute if the point inside the region
#TODO can be better
scoreboard players set #cube.temp.reg PS.mem -1

execute if score $math.mat.o.1.1 PS.mem matches 1.. if score $math.mat.o.1.1 PS.mem <= #tools.cube.whd.w_ PS.mem if score $math.mat.o.2.1 PS.mem matches 1.. if score $math.mat.o.2.1 PS.mem <= #tools.cube.whd.h_ PS.mem if score $math.mat.o.3.1 PS.mem matches 1.. if score $math.mat.o.3.1 PS.mem <= #tools.cube.whd.d_ PS.mem run scoreboard players set #cube.temp.reg PS.mem 0
execute if score #cube.temp.reg PS.mem matches -1 if score $math.mat.o.1.1 PS.mem matches -999.. if score $math.mat.o.1.1 PS.mem <= #tools.cube.whd.w PS.mem if score $math.mat.o.2.1 PS.mem matches -999.. if score $math.mat.o.2.1 PS.mem <= #tools.cube.whd.h PS.mem if score $math.mat.o.3.1 PS.mem matches -999.. if score $math.mat.o.3.1 PS.mem <= #tools.cube.whd.d PS.mem run scoreboard players set #cube.temp.reg PS.mem 1