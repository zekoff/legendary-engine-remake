/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3C9D0D40
/// @DnDArgument : "msg" ""Tapped " + string(button_type)"
show_debug_message(string("Tapped " + string(button_type)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 006E3636
/// @DnDArgument : "var" "obj_ui_state.selected_layer"
/// @DnDArgument : "value" "noone"
if(obj_ui_state.selected_layer == noone)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C529881
	/// @DnDParent : 006E3636
	/// @DnDArgument : "var" "_target_color"
	/// @DnDArgument : "value" "button_color"
	var _target_color = button_color;

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40FE3195
	/// @DnDApplyTo : 2572ff03-5d3a-4012-9927-27c6954d5a26
	/// @DnDParent : 006E3636
	/// @DnDArgument : "colour" "_target_color"
	/// @DnDArgument : "alpha" "false"
	with(obj_layer_indicator) {
	image_blend = _target_color & $ffffff;
	}
}