execute store result score #str.split.temp PS.mem run data get storage ps:str split.in[0]

execute if score #str.split.temp PS.mem = $str.split.char PS.mem run data modify storage ps:str split.out append value []
execute if score #str.split.temp PS.mem = $str.split.char PS.mem run scoreboard players add $str.split.cnt PS.mem 1

execute unless score #str.split.temp PS.mem = $str.split.char PS.mem run data modify storage ps:str split.out[-1] append from storage ps:str split.in[0]