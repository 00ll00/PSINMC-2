#as player
execute at 0-0110-5053-0-1 run summon marker ~ ~ ~ {Tags:["PS.","PS.cstm_","PS.cstm","PS.cstm.dn","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.cstm_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.cstm_] remove PS.cstm_