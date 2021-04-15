#as player
execute if entity @s[scores={PS.key.rmb=1..}] run function ps:key/rmb/raw
execute if entity @s[scores={PS.key.rmb.s=0,PS.key.rmb=1..}] run function ps:key/rmb/keydn
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=1..}] run function ps:key/rmb/keyhd
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=0}] run function ps:key/rmb/keyup