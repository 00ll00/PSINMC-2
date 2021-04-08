#as stroke at @s align xyz
#output #sphere.temp.reg

#whether the point inside the region

scoreboard players set #sphere.temp.reg PS.mem 0
execute if score #sphere.temp.dist PS.mem >= #tools.sphere.inner PS.mem if score #sphere.temp.dist PS.mem < #tools.sphere.outter PS.mem run scoreboard players set #sphere.temp.reg PS.mem 1