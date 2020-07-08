#as player
function ps:tools/com/size
execute at @e[tag=PS.tools.stroke] if block ~ ~ ~ #ps:colored run function ps:color/getblock/call
kill @e[tag=PS.tools.stroke]