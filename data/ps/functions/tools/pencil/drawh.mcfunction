#as player
function ps:tools/com/sizeh
execute at @e[tag=PS.tools.stroke] if block ~ ~ ~ #ps:colored run function ps:color/getblock/call
kill @e[tag=PS.tools.stroke]