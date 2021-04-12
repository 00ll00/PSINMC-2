#as stroke at @s align xyz
#output #sphere.temp.reg

#whether the point inside the region

scoreboard players operation $math.mat.b.1.1 PS.mem = #tools.sphere.p.x PS.mem
scoreboard players operation $math.mat.b.2.1 PS.mem = #tools.sphere.p.y PS.mem
scoreboard players operation $math.mat.b.3.1 PS.mem = #tools.sphere.p.z PS.mem
function ps:math/mat/multiplication/33x31
scoreboard players operation $math.mat.o.1.1 PS.mem *= #tools.sphere.r PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem *= #tools.sphere.r PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem *= #tools.sphere.r PS.mem
scoreboard players operation $math.mat.o.1.1 PS.mem /= #tools.sphere.whd.w PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem /= #tools.sphere.whd.h PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem /= #tools.sphere.whd.d PS.mem
scoreboard players operation $math.mat.o.1.1 PS.mem *= $math.mat.o.1.1 PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem *= $math.mat.o.2.1 PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem *= $math.mat.o.3.1 PS.mem

scoreboard players operation #sphere.temp.dist PS.mem = $math.mat.o.1.1 PS.mem
scoreboard players operation #sphere.temp.dist PS.mem += $math.mat.o.2.1 PS.mem
scoreboard players operation #sphere.temp.dist PS.mem += $math.mat.o.3.1 PS.mem
#TODO use a more accurate method
scoreboard players set #sphere.temp.reg PS.mem 0
execute if score #sphere.temp.dist PS.mem >= #tools.sphere.inner PS.mem if score #sphere.temp.dist PS.mem < #tools.sphere.outter PS.mem run scoreboard players set #sphere.temp.reg PS.mem 1