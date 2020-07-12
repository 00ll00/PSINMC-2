#as stroke
function ps:color/getcolor/call
function ps:tools/com/getshape
execute store result score #tools.airbrush.temp PS.mem run data get entity @s UUID[0]
scoreboard players operation #tools.airbrush.temp PS.mem %= $8 PS.const
scoreboard players operation $tools.shape PS.mem /= #tools.airbrush.temp PS.mem
function ps:tools/com/shapemix
function ps:color/getblock/call
#execute if score #tools.airbrush.temp PS.mem matches 0 run function ps:tools/airbrush/stroke_
