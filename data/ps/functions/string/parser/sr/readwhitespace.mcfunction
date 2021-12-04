#move next whitespace(' ','\n') sequence to current piece

scoreboard players set #str.parser.rwsp.suc PS.mem 0
execute store result score #str.parser.rwsp PS.mem run data get storage ps:str parser.in[0]

execute if score #str.parser.rwsp PS.mem matches 0 run scoreboard players set #str.parser.rwsp.suc PS.mem 1
execute if score #str.parser.rwsp PS.mem matches 61 run scoreboard players set #str.parser.rwsp.suc PS.mem 1

execute if score #str.parser.rwsp.suc PS.mem matches 1 run function ps:string/parser/sr/readchar
execute if score #str.parser.rwsp.suc PS.mem matches 1 if data storage ps:str parser.in[0] run function ps:string/parser/sr/readwhitesp