#as player
#on -1:clear 0:off 1:init 2:check
execute if score @s PS.key.lmb.on matches -1 run function ps:key/lmb/clear
execute if score @s PS.key.lmb.on matches 2 unless entity @e[tag=PS.players.belonging,tag=PS.key.lmb] run function ps:key/lmb/keydn
execute if score @s PS.key.lmb.on matches 2 if score @s PS.key.lmb matches 1.. run function ps:key/lmb/keydn
execute if score @s PS.key.lmb.on matches 1 run function ps:key/lmb/init
execute if score @s PS.key.lmb.on matches 1.. at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=PS.players.belonging,tag=PS.key.lmb] ~ ~-.5 ~
execute if score @s PS.key.lmb.on matches 1.. run data modify entity @e[tag=PS.players.belonging,tag=PS.key.lmb,limit=1] Health set value 10
