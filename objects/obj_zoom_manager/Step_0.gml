/// @DnDAction : YoYo Games.Cameras.Get_View_Var
/// @DnDVersion : 1
/// @DnDHash : 7C2E7499
/// @DnDArgument : "target" "_camera"
/// @DnDArgument : "target_temp" "1"
var _camera = view_get_camera(0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FE0A4CB
/// @DnDInput : 2
/// @DnDArgument : "var" "_current_camera_angle"
/// @DnDArgument : "value" "camera_get_view_angle(_camera)"
/// @DnDArgument : "var_1" "_increase"
/// @DnDArgument : "value_1" "1"
var _current_camera_angle = camera_get_view_angle(_camera);
var _increase = 1;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 30DD123F
var l30DD123F_0;
l30DD123F_0 = mouse_check_button(mb_left);
if (l30DD123F_0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 455F37D9
	/// @DnDInput : 2
	/// @DnDParent : 30DD123F
	/// @DnDArgument : "function" "camera_set_view_angle"
	/// @DnDArgument : "arg" "_camera"
	/// @DnDArgument : "arg_1" "_current_camera_angle + _increase"
	camera_set_view_angle(_camera, _current_camera_angle + _increase);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 23C6FF99
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 71709080
	/// @DnDParent : 23C6FF99
	/// @DnDArgument : "button" "mb_right"
	var l71709080_0;
	l71709080_0 = mouse_check_button(mb_right);
	if (l71709080_0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 54EB5A28
		/// @DnDInput : 2
		/// @DnDParent : 71709080
		/// @DnDArgument : "function" "camera_set_view_angle"
		/// @DnDArgument : "arg" "_camera"
		/// @DnDArgument : "arg_1" "_current_camera_angle - _increase"
		camera_set_view_angle(_camera, _current_camera_angle - _increase);
	}
}