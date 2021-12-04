#input: storage ps:str parser.in
#output: storage ps:str parser.out

data modify storage ps:str parser.out set value []
data modify storage ps:str parser.state set value "none"

setblock 29999999 3 3006 oak_sign destroy

function ps:string/parser/sr/readwhitespace
execute if data storage ps:str parser.in[0] run function ps:string/parser/lsys/none/call