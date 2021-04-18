#as player
summon bat ~ ~100 ~ {Tags:["PS.","PS.key.lmb_","PS.key.lmb","PS.players.owned","PS.players.belonging"],NoGravity:1b,NoAI:1b,Silent:1b,ActiveEffects:[{Ambient:0b,Duration:2147483647,Id:14b,ShowParticles:0b}]}
scoreboard players operation @e[tag=PS.key.lmb_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.key.lmb_] remove PS.key.lmb_
scoreboard players set @s PS.key.lmb.on 2