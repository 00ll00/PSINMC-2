function ps:tools/events/q_dn/returnitem
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_q:"size_up"}}}] run function ps:tools/size_up
execute as @s[nbt={SelectedItem:{tag:{PS_tool_event_q:"tool_build"}}}] run function ps:tools/build
