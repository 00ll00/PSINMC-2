function ps:tools/events/f_dn/returnitem
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_f:"size_dn"}}}] run function ps:tools/size_dn
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_f:"tool_cancel"}}}] run function ps:tools/cancel