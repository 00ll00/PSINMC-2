#as player

#tool
execute as @s[scores={PS.tools.hold=1,PS.menu.show=0,PS.key.sft.s=0}] run function ps:tools/events/rmb_up/call
execute as @s[scores={PS.tools.hold=1,PS.menu.show=0,PS.key.sft.s=1}] run function ps:tools/events/rmb_up_with_sft/call