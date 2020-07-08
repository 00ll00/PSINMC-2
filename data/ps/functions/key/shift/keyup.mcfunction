#as player
scoreboard players set @s PS.key.sft.s 0
execute if entity @s[scores={PS.menu.show=1}] run function ps:menu/hide