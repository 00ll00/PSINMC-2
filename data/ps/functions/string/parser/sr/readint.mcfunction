#move next signed numerical char sequence to current piece

execute store result score #str.parser.ri PS.mem run data get storage ps:str parser.in[0]

execute 

execute if score #str.parser.ri PS.mem matches 15..24 run function ps:string/parser/sr/readchar
execute if score #str.parser.ri PS.mem matches 15..24 if data storage ps:str parser.in[0] run function ps:string/parser/sr/readword