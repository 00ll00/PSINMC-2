function ps:tools/events/f_dn/returnitem
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_fws:"color_exc"}}}] run function ps:color/exchange
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_fws:"focus_dist"}}}] run function ps:focus/change_dist