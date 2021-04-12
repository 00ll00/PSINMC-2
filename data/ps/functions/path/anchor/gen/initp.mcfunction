#as point
#input:
#   $math.bzr.o.x/y/z  101
#   $math.bzr.n

execute store result entity @s Pos[0] double 1 store result score @s PS.path.p.x run scoreboard players operation $math.bzr.o.x PS.mem /= $10 PS.const
execute store result entity @s Pos[1] double 1 store result score @s PS.path.p.y run scoreboard players operation $math.bzr.o.y PS.mem /= $10 PS.const
execute store result entity @s Pos[2] double 1 store result score @s PS.path.p.z run scoreboard players operation $math.bzr.o.z PS.mem /= $10 PS.const
scoreboard players operation @s PS.path.p.id = $math.bzr.n PS.mem

execute at @s run tp @s ~.5 ~.5 ~.5

team join ps.white @s