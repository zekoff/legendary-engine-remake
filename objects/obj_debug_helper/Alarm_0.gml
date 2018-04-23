/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 512FA794
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1C8EEDEA
/// @DnDInput : 2
/// @DnDArgument : "msg" ""Number of instances on screen:""
/// @DnDArgument : "msg_1" "instance_count"
show_debug_message(string("Number of instances on screen:") + "
" + string(instance_count));