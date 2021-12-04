#move next word(0-9,A-Z,a-z,'_') to current piece

scoreboard players set #str.parser.readw.suc PS.mem 0
execute store result score #str.parser.readw PS.mem run data get storage ps:str parser.in[0]

execute if score #str.parser.readw PS.mem matches 15..24 run scoreboard players set #str.parser.readw.suc PS.mem 1
execute if score #str.parser.readw PS.mem matches 32..57 run scoreboard players set #str.parser.readw.suc PS.mem 1
execute if score #str.parser.readw PS.mem matches 64..91 unless score #str.parser.readw PS.mem matches 65 run scoreboard players set #str.parser.readw.suc PS.mem 1

execute if score #str.parser.readw.suc PS.mem matches 1 run function ps:string/parser/sr/readchar
execute if score #str.parser.readw.suc PS.mem matches 1 if data storage ps:str parser.in[0] run function ps:string/parser/sr/readword