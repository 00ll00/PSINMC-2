#input $math.mat.a.i.j
#output $math.mat.adj.i.j

scoreboard players set $math.mat.adj.1.1 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.1 PS.mem += #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.1 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.1.2 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.2 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.2 PS.mem += #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.1.3 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.3 PS.mem += #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.1.3 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.2.1 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.1 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.1 PS.mem += #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.2.2 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.2 PS.mem += #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.2 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.2.3 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.3 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.3 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.3 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.2.3 PS.mem += #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.3.1 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.1 PS.mem += #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.2.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.1 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.3.2 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.2 PS.mem -= #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.3.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.2 PS.mem += #math.mat.det.temp PS.mem
scoreboard players set $math.mat.adj.3.3 PS.mem 0
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.1 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.2 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.3 PS.mem += #math.mat.det.temp PS.mem
scoreboard players operation #math.mat.det.temp PS.mem = $math.mat.a.1.2 PS.mem
scoreboard players operation #math.mat.det.temp PS.mem *= $math.mat.a.2.1 PS.mem
scoreboard players add #math.mat.det.temp PS.mem 500
scoreboard players operation #math.mat.det.temp PS.mem /= $1000 PS.const
scoreboard players operation $math.mat.adj.3.3 PS.mem -= #math.mat.det.temp PS.mem
