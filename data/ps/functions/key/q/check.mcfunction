#as player
execute as @s[scores={PS.key.q=1..}] run function ps:key/q/keydn
scoreboard players set @s PS.key.q 0