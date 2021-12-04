#move next space(' ') sequence to current piece

execute store result score #str.parser.rwsp PS.mem run data get storage ps:str parser.in[0]

execute if score #str.parser.rwsp PS.mem matches 0 run function ps:string/parser/sr/readchar
execute if score #str.parser.rwsp PS.mem matches 0 if data storage ps:str parser.in[0] run function ps:string/parser/sr/readwhitesp