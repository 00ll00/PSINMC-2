#as cb
scoreboard players add #str.str2ca.loop PS.mem 1
data modify entity 0-0110-5053-0-4 Tags set value ["PS.","PS.str","PS.a","PS.b","PS.c"]
data modify entity 0-0110-5053-1-4 Tags set value ["PS.","PS.str","PS.a, PS.b, PS.c"]
data merge block 29999999 3 3007 {Text1:'[{"nbt":"str2ca.in","storage":"ps:str"},{"text":"喵~"}]'}
data modify entity 0-0110-5053-0-4 CustomName set from block 29999999 3 3007 Text1
data merge block 29999999 3 3007 {Text2:'[{"nbt":"Text3","block":"29999999 3 3007","interpret":true},{"nbt":"id2char.out","storage":"ps:str","interpret":true},{"text":"喵~"}]'}
data modify entity 0-0110-5053-1-4 CustomName set from block 29999999 3 3007 Text2