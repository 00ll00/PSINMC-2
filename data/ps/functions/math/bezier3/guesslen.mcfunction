#input: 
#   $math.bzr.x1/y1/z1
#   $math.bzr.x2/y2/z2
#   $math.bzr.x3/y3/z3
#   $math.bzr.x4/y4/z4

#output: $math.bzr.l

scoreboard players operation $math.vect.x PS.mem = $math.bzr.x1 PS.mem
scoreboard players operation $math.vect.y PS.mem = $math.bzr.y1 PS.mem
scoreboard players operation $math.vect.z PS.mem = $math.bzr.z1 PS.mem
scoreboard players operation $math.vect.x PS.mem -= $math.bzr.x2 PS.mem
scoreboard players operation $math.vect.y PS.mem -= $math.bzr.y2 PS.mem
scoreboard players operation $math.vect.z PS.mem -= $math.bzr.z2 PS.mem
function ps:math/vect/magnitude/call
scoreboard players operation $math.bzr.l PS.mem = $math.vect.mag PS.mem

scoreboard players operation $math.vect.x PS.mem = $math.bzr.x2 PS.mem
scoreboard players operation $math.vect.y PS.mem = $math.bzr.y2 PS.mem
scoreboard players operation $math.vect.z PS.mem = $math.bzr.z2 PS.mem
scoreboard players operation $math.vect.x PS.mem -= $math.bzr.x3 PS.mem
scoreboard players operation $math.vect.y PS.mem -= $math.bzr.y3 PS.mem
scoreboard players operation $math.vect.z PS.mem -= $math.bzr.z3 PS.mem
function ps:math/vect/magnitude/call
scoreboard players operation $math.bzr.l PS.mem += $math.vect.mag PS.mem

scoreboard players operation $math.vect.x PS.mem = $math.bzr.x3 PS.mem
scoreboard players operation $math.vect.y PS.mem = $math.bzr.y3 PS.mem
scoreboard players operation $math.vect.z PS.mem = $math.bzr.z3 PS.mem
scoreboard players operation $math.vect.x PS.mem -= $math.bzr.x4 PS.mem
scoreboard players operation $math.vect.y PS.mem -= $math.bzr.y4 PS.mem
scoreboard players operation $math.vect.z PS.mem -= $math.bzr.z4 PS.mem
function ps:math/vect/magnitude/call
scoreboard players operation $math.bzr.l PS.mem += $math.vect.mag PS.mem

scoreboard players operation $math.bzr.l PS.mem /= $5 PS.const