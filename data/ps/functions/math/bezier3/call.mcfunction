#input: 
#   $math.bzr.x1/y1/z1
#   $math.bzr.x2/y2/z2
#   $math.bzr.x3/y3/z3
#   $math.bzr.x4/y4/z4
#   $math.bzr.l
#   $math.bzr.n

#output: $math.bzr.o.x/y/z  101

scoreboard players operation $math.bzr.x2 PS.mem -= $math.bzr.x1 PS.mem
scoreboard players operation $math.bzr.x3 PS.mem -= $math.bzr.x1 PS.mem
scoreboard players operation $math.bzr.x4 PS.mem -= $math.bzr.x1 PS.mem
scoreboard players operation $math.bzr.y2 PS.mem -= $math.bzr.y1 PS.mem
scoreboard players operation $math.bzr.y3 PS.mem -= $math.bzr.y1 PS.mem
scoreboard players operation $math.bzr.y4 PS.mem -= $math.bzr.y1 PS.mem
scoreboard players operation $math.bzr.z2 PS.mem -= $math.bzr.z1 PS.mem
scoreboard players operation $math.bzr.z3 PS.mem -= $math.bzr.z1 PS.mem
scoreboard players operation $math.bzr.z4 PS.mem -= $math.bzr.z1 PS.mem

execute store result score $math.bzr.o.x PS.mem run scoreboard players operation $math.bzr.x1 PS.mem *= $10 PS.const
execute store result score $math.bzr.o.y PS.mem run scoreboard players operation $math.bzr.y1 PS.mem *= $10 PS.const
execute store result score $math.bzr.o.z PS.mem run scoreboard players operation $math.bzr.z1 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.x2 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.y2 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.z2 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.x3 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.y3 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.z3 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.x4 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.y4 PS.mem *= $10 PS.const
scoreboard players operation $math.bzr.z4 PS.mem *= $10 PS.const

scoreboard players operation #math.bzr.m PS.mem = $math.bzr.l PS.mem
scoreboard players operation #math.bzr.m PS.mem -= $math.bzr.n PS.mem

scoreboard players set #math.bzr.temp PS.mem 3
scoreboard players operation #math.bzr.temp PS.mem *= #math.bzr.m PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= #math.bzr.m PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.n PS.mem
scoreboard players operation $math.bzr.x2 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.y2 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.z2 PS.mem *= #math.bzr.temp PS.mem

scoreboard players set #math.bzr.temp PS.mem 3
scoreboard players operation #math.bzr.temp PS.mem *= #math.bzr.m PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.n PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.n PS.mem
scoreboard players operation $math.bzr.x3 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.y3 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.z3 PS.mem *= #math.bzr.temp PS.mem

scoreboard players operation #math.bzr.temp PS.mem = $math.bzr.n PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.n PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.n PS.mem
scoreboard players operation $math.bzr.x4 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.y4 PS.mem *= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.z4 PS.mem *= #math.bzr.temp PS.mem

scoreboard players operation #math.bzr.temp PS.mem = $math.bzr.l PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.l PS.mem
scoreboard players operation #math.bzr.temp PS.mem *= $math.bzr.l PS.mem
scoreboard players operation $math.bzr.x2 PS.mem += $math.bzr.x3 PS.mem
scoreboard players operation $math.bzr.y2 PS.mem += $math.bzr.y3 PS.mem
scoreboard players operation $math.bzr.z2 PS.mem += $math.bzr.z3 PS.mem
scoreboard players operation $math.bzr.x2 PS.mem += $math.bzr.x4 PS.mem
scoreboard players operation $math.bzr.y2 PS.mem += $math.bzr.y4 PS.mem
scoreboard players operation $math.bzr.z2 PS.mem += $math.bzr.z4 PS.mem
scoreboard players operation $math.bzr.x2 PS.mem /= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.y2 PS.mem /= #math.bzr.temp PS.mem
scoreboard players operation $math.bzr.z2 PS.mem /= #math.bzr.temp PS.mem

scoreboard players operation $math.bzr.o.x PS.mem += $math.bzr.x2 PS.mem
scoreboard players operation $math.bzr.o.y PS.mem += $math.bzr.y2 PS.mem
scoreboard players operation $math.bzr.o.z PS.mem += $math.bzr.z2 PS.mem
scoreboard players add $math.bzr.o.x PS.mem 5
scoreboard players add $math.bzr.o.y PS.mem 5
scoreboard players add $math.bzr.o.z PS.mem 5