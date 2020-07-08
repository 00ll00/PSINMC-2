#as color owner
#input:
#   color.r/g/b/a

execute if score $color.a PS.mem matches 1..6 run function ps:color/alphamix_
execute if score $color.a PS.mem matches 7 run function ps:color/alphamix__