#as player
execute store success score @s PS.tps.show if score @s PS.tps.show matches 0
bossbar set ps:tps players @s[scores={PS.tps.show=1}]