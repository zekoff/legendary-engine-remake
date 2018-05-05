/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65805971
/// @DnDArgument : "code" "/// @desc Check if two planets are connected$(13_10)/// @param {real} planet1 First planet$(13_10)/// @param {real} planet2 Second planet$(13_10)/// @param {real} object_type Type of connection to check for"
/// @desc Check if two planets are connected
/// @param {real} planet1 First planet
/// @param {real} planet2 Second planet
/// @param {real} object_type Type of connection to check for

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 43F29881
/// @DnDInput : 5
/// @DnDArgument : "var" "_point1"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "_point2"
/// @DnDArgument : "value_1" "argument1"
/// @DnDArgument : "var_2" "_point1_connected"
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "var_3" "_point2_connected"
/// @DnDArgument : "value_3" "false"
/// @DnDArgument : "var_4" "_connection_type"
/// @DnDArgument : "value_4" "argument2"
var _point1 = argument0;
var _point2 = argument1;
var _point1_connected = false;
var _point2_connected = false;
var _connection_type = argument2;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4507AF55
/// @DnDApplyTo : _connection_type
with(_connection_type) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 528F0F41
	/// @DnDParent : 4507AF55
	/// @DnDArgument : "expr" "point_start == _point1 || point_end == _point1"
	if(point_start == _point1 || point_end == _point1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A680A62
		/// @DnDParent : 528F0F41
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "_point1_connected"
		_point1_connected = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 13EAD62D
	/// @DnDParent : 4507AF55
	/// @DnDArgument : "expr" "point_start == _point2 || point_end == _point2"
	if(point_start == _point2 || point_end == _point2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11B3A2BF
		/// @DnDParent : 13EAD62D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "_point2_connected"
		_point2_connected = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0F3AB0C7
	/// @DnDParent : 4507AF55
	/// @DnDArgument : "expr" "_point1_connected && _point2_connected"
	if(_point1_connected && _point2_connected)
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 63F84200
		/// @DnDParent : 0F3AB0C7
		/// @DnDArgument : "value" "id"
		return id;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 415F885E
	/// @DnDInput : 2
	/// @DnDParent : 4507AF55
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "_point1_connected"
	/// @DnDArgument : "var_1" "_point2_connected"
	_point1_connected = false;
	_point2_connected = false;
}

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 26C2659F
/// @DnDArgument : "value" "noone"
return noone;