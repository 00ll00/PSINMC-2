#input $math.mat.a.i.j $math.mat.b.i.j  103
#output $math.mat.o.i.j  103

scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.1.1 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.1.1 PS.mem
scoreboard players operation $math.mat.o.1.1 PS.mem = #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.1.2 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.2.1 PS.mem
scoreboard players operation $math.mat.o.1.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.1.3 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.3.1 PS.mem
scoreboard players operation $math.mat.o.1.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players add $math.mat.o.1.1 PS.mem 500
scoreboard players operation $math.mat.o.1.1 PS.mem /= $1000 PS.const
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.2.1 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.1.1 PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem = #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.2.2 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.2.1 PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.2.3 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.3.1 PS.mem
scoreboard players operation $math.mat.o.2.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players add $math.mat.o.2.1 PS.mem 500
scoreboard players operation $math.mat.o.2.1 PS.mem /= $1000 PS.const
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.3.1 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.1.1 PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem = #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.3.2 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.2.1 PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem = $math.mat.a.3.3 PS.mem
scoreboard players operation #math.mat.multi.temp PS.mem *= $math.mat.b.3.1 PS.mem
scoreboard players operation $math.mat.o.3.1 PS.mem += #math.mat.multi.temp PS.mem
scoreboard players add $math.mat.o.3.1 PS.mem 500
scoreboard players operation $math.mat.o.3.1 PS.mem /= $1000 PS.const
