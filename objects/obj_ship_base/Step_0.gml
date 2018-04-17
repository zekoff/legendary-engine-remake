/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 41C280FB
/// @DnDArgument : "expr" "orbiting != noone"
if(orbiting != noone)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63735D8D
	/// @DnDParent : 41C280FB
	/// @DnDArgument : "expr" "orbit_speed * orbit_direction"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "orbit_angle_deg"
	orbit_angle_deg += orbit_speed * orbit_direction;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 151925D4
	/// @DnDInput : 2
	/// @DnDParent : 41C280FB
	/// @DnDArgument : "var" "_new_point_array"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "scr_find_rotated_point"
	/// @DnDArgument : "arg" "orbit_distance"
	/// @DnDArgument : "arg_1" "orbit_angle_deg"
	/// @DnDSaveInfo : "script" "0cd17319-a8c5-4685-bb29-6dc753b0449d"
	var _new_point_array = script_execute(scr_find_rotated_point, orbit_distance, orbit_angle_deg);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A73D448
	/// @DnDInput : 2
	/// @DnDParent : 41C280FB
	/// @DnDArgument : "expr" "orbiting.x + _new_point_array[0]"
	/// @DnDArgument : "expr_1" "orbiting.y + _new_point_array[1]"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = orbiting.x + _new_point_array[0];
	y = orbiting.y + _new_point_array[1];
}