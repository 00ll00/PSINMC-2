data modify storage ps:players actionbar.one set from storage ps:players actionbar.raw[0]
data remove storage ps:players actionbar.raw[0]
execute if data storage ps:players actionbar{one:'tool_name'} run function ps:players/actionbar/tool_name
execute if data storage ps:players actionbar{one:'tool_size'} run function ps:players/actionbar/tool_size
execute if data storage ps:players actionbar{one:'tool_mode'} run function ps:players/actionbar/tool_mode
execute if data storage ps:players actionbar{one:'color_a'} run function ps:players/actionbar/color_a
execute if data storage ps:players actionbar{one:'color_c1c2'} run function ps:players/actionbar/color_c1c2
execute if data storage ps:players actionbar{one:'color_c1c2a'} run function ps:players/actionbar/color_c1c2a
execute if data storage ps:players actionbar{one:'focus_pos'} run function ps:players/actionbar/focus_pos

execute if data storage ps:players actionbar.raw[0] run function ps:players/actionbar/recu