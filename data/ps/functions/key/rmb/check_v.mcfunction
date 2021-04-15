#as player
#output:
#   @s PS.tools.wkpath
#   @s PS.tools.wka
#   @s PS.tools.wkp
execute if entity @s[scores={PS.key.rmb.s=0,PS.key.rmb=1..}] run function ps:key/rmb/keydn_v
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=1..}] run function ps:key/rmb/keyhd_v
execute if entity @s[scores={PS.key.rmb.s=2,PS.key.rmb.cd=0}] run function ps:key/rmb/keyup_v