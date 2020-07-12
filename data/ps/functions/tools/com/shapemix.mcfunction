#as color owner#as color owner
#input:
#   $color.r/g/b/a
#   $tools.shape

scoreboard players operation #shapemix.a PS.mem = $color.a PS.mem
scoreboard players operation #shapemix.a PS.mem *= $tools.shape PS.mem
scoreboard players operation #shapemix.a PS.mem /= $8 PS.const

execute if score #shapemix.a PS.mem matches 1..6 run function ps:tools/com/shapemix_
execute if score #shapemix.a PS.mem matches 7 run function ps:tools/com/shapemix__