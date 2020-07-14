function ps:tools/events/q_dn/returnitem
execute as @s[scores={PS.menu.show=0},nbt={SelectedItem:{tag:{PS_tool_event_qws:"menu_show"}}}] run function ps:menu/show