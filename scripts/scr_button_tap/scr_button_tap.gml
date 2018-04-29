/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 578F10ED
/// @DnDArgument : "msg" ""Tapped " + string(button_type)"
show_debug_message(string("Tapped " + string(button_type)));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ADBBC96
/// @DnDInput : 2
/// @DnDArgument : "var" "_target_color"
/// @DnDArgument : "value" "button_color"
/// @DnDArgument : "var_1" "_target_layer"
/// @DnDArgument : "value_1" "button_type"
var _target_color = button_color;
var _target_layer = button_type;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58853BA2
/// @DnDArgument : "var" "obj_ui_state.selected_layer"
/// @DnDArgument : "value" "button_type"
if(obj_ui_state.selected_layer == button_type)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16E58B6A
	/// @DnDInput : 2
	/// @DnDParent : 58853BA2
	/// @DnDArgument : "expr" "$FFFFFFFF"
	/// @DnDArgument : "expr_1" "noone"
	/// @DnDArgument : "var" "_target_color"
	/// @DnDArgument : "var_1" "_target_layer"
	_target_color = $FFFFFFFF;
	_target_layer = noone;
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2F3B8D15
/// @DnDApplyTo : 2572ff03-5d3a-4012-9927-27c6954d5a26
/// @DnDArgument : "colour" "_target_color"
/// @DnDArgument : "alpha" "false"
with(obj_layer_indicator) {
image_blend = _target_color & $ffffff;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7496EBC8
/// @DnDArgument : "expr" "_target_layer"
/// @DnDArgument : "var" "obj_ui_state.selected_layer"
obj_ui_state.selected_layer = _target_layer;