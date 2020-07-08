#as player
scoreboard players set @s PS.key.sft.s 1
scoreboard players set @s PS.key.sft.cd 6

execute if entity @s[scores={PS.menu.show=0,PS.menu.hotk=0,PS.tools.hold=0}] run function ps:menu/show