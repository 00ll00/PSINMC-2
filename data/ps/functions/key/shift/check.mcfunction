#as player
#state 0:off 1:pressing 2:double-tap
execute if entity @s[scores={PS.key.sft=1..,PS.key.sft.s=0,PS.key.sft.cd=1..}] run function ps:key/shift/keydblc
execute if entity @s[scores={PS.key.sft=1..,PS.key.sft.s=0,PS.key.sft.cd=0}] run function ps:key/shift/keydn
execute if entity @s[scores={PS.key.sft=0,PS.key.sft.s=1..}] run function ps:key/shift/keyup

scoreboard players set @s PS.key.sft 0
scoreboard players remove @s[scores={PS.key.sft.cd=1..}] PS.key.sft.cd 1