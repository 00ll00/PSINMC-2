#as player
scoreboard players set @s PS.key.sft.s 2

execute if entity @s[scores={PS.menu.hotk=0}] run function ps:menu/hotk
execute if entity @s[scores={PS.menu.show=0,PS.menu.hotk=1}] run function ps:menu/show