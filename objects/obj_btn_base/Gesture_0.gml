/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3C9D0D40
/// @DnDArgument : "msg" ""Tapped " + string(button_type)"
show_debug_message(string("Tapped " + string(button_type)));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CDD6C75
/// @DnDInput : 3
/// @DnDArgument : "var" "_target_color"
/// @DnDArgument : "value" "button_color"
/// @DnDArgument : "var_1" "_ui_skew_amount_px"
/// @DnDArgument : "value_1" "50"
/// @DnDArgument : "var_2" "_target_layer"
/// @DnDArgument : "value_2" "button_type"
var _target_color = button_color;
var _ui_skew_amount_px = 50;
var _target_layer = button_type;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59842774
/// @DnDArgument : "var" "obj_ui_state.selected_layer"
/// @DnDArgument : "value" "button_type"
if(obj_ui_state.selected_layer == button_type)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70CEFB38
	/// @DnDInput : 3
	/// @DnDParent : 59842774
	/// @DnDArgument : "expr_1" "noone"
	/// @DnDArgument : "expr_2" "$FFFFFFFF"
	/// @DnDArgument : "var" "_ui_skew_amount_px"
	/// @DnDArgument : "var_1" "_target_layer"
	/// @DnDArgument : "var_2" "_target_color"
	_ui_skew_amount_px = 0;
	_target_layer = noone;
	_target_color = $FFFFFFFF;
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 48D50250
/// @DnDApplyTo : 2572ff03-5d3a-4012-9927-27c6954d5a26
/// @DnDArgument : "colour" "_target_color"
/// @DnDArgument : "alpha" "false"
with(obj_layer_indicator) {
image_blend = _target_color & $ffffff;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02E39F9A
/// @DnDApplyTo : 9cc99fdb-23be-4bfc-a397-1d6ed0182913
/// @DnDArgument : "expr" "ystart"
/// @DnDArgument : "var" "y"
with(obj_btn_base) {
y = ystart;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B20368D
/// @DnDInput : 2
/// @DnDArgument : "expr" "-_ui_skew_amount_px"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "_target_layer"
/// @DnDArgument : "var" "y"
/// @DnDArgument : "var_1" "obj_ui_state.selected_layer"
y += -_ui_skew_amount_px;
obj_ui_state.selected_layer = _target_layer;