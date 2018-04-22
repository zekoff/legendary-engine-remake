/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 79944DD0
/// @DnDArgument : "var" "drag_target"
/// @DnDArgument : "not" "1"
if(drag_target != undefined)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AEA39F0
	/// @DnDInput : 2
	/// @DnDParent : 79944DD0
	/// @DnDArgument : "expr" "event_data[?"posX"]"
	/// @DnDArgument : "expr_1" "event_data[?"posY"]"
	/// @DnDArgument : "var" "drag_target.x"
	/// @DnDArgument : "var_1" "drag_target.y"
	drag_target.x = event_data[?"posX"];
	drag_target.y = event_data[?"posY"];
}