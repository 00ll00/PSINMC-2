#as player
execute as @s[scores={PS.key.sft.s=0,PS.tools.type=1..}] run function ps:tools/events/q_dn/call
execute as @s[scores={PS.key.sft.s=1..,PS.tools.type=1..}] run function ps:tools/events/q_with_sft/call