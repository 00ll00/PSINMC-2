#as cb
execute if score #str.str2ca.tags PS.mem matches 4 run function ps:string/str2ca/success
data modify block 29999999 3 3007 Text1 set value '[{"nbt":"LastOutput","block":"29999999 2 3001","interpret":true},", ",{"nbt":"LastOutput","block":"29999999 2 3003"},", ",{"nbt":"LastOutput","block":"29999999 2 3004"}]'
data modify entity 0-0110-5053-0-4 CustomName set from block 29999999 3 3007 Text1
data modify block 29999999 3 3007 Text2 set value '{"nbt":"LastOutput","block":"29999999 1 3001","interpret":true}'
data modify entity 0-0110-5053-1-4 CustomName set from block 29999999 3 3007 Text2