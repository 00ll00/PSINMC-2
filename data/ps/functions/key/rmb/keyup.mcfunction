#as player
scoreboard players set @s PS.key.rmb.s -1

#tool
execute as @s[scores={PS.tools.hold=1,PS.menu.show=0,PS.key.sft.s=0}] run function ps:tools/events/rmb_up/call
execute as @s[scores={PS.tools.hold=1,PS.menu.show=0,PS.key.sft.s=1}] run function ps:tools/events/rmb_up_with_sft/call
scoreboard players set @s PS.tools.hold 0