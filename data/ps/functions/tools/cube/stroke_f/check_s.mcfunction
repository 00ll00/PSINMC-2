#as stroke at @s align xyz
#output #cube.temp.reg

#whether the point inside the region

scoreboard players set #cube.temp.reg PS.mem 0

execute store success score #cube.temp.reg PS.mem if score $math.mat.o.1.1 PS.mem matches -999.. if score $math.mat.o.1.1 PS.mem <= #tools.cube.whd.w PS.mem if score $math.mat.o.2.1 PS.mem matches -999.. if score $math.mat.o.2.1 PS.mem <= #tools.cube.whd.h PS.mem if score $math.mat.o.3.1 PS.mem matches -999.. if score $math.mat.o.3.1 PS.mem <= #tools.cube.whd.d PS.mem