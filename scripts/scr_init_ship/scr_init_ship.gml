/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 73812596
/// @DnDArgument : "var" "orbit_distance"
/// @DnDArgument : "min" "25"
/// @DnDArgument : "max" "45"
orbit_distance = (random_range(25, 45));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 728453B0
/// @DnDArgument : "var" "orbit_speed"
/// @DnDArgument : "min" ".2"
orbit_speed = (random_range(.2, 1));

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 76B3DB52
/// @DnDInput : 2
/// @DnDArgument : "var" "orbit_direction"
/// @DnDArgument : "option" "1"
/// @DnDArgument : "option_1" "-1"
orbit_direction = choose(1, -1);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1E98071B
/// @DnDArgument : "var" "orbit_angle_deg"
/// @DnDArgument : "max" "360"
orbit_angle_deg = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2D438B7D
/// @DnDInput : 2
/// @DnDArgument : "var" "_point_offsets"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_find_rotated_point"
/// @DnDArgument : "arg" "orbit_distance"
/// @DnDArgument : "arg_1" "orbit_angle_deg"
/// @DnDSaveInfo : "script" "0cd17319-a8c5-4685-bb29-6dc753b0449d"
var _point_offsets = script_execute(scr_find_rotated_point, orbit_distance, orbit_angle_deg);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2972970B
/// @DnDInput : 2
/// @DnDArgument : "expr" "orbiting.x + _point_offsets[0]"
/// @DnDArgument : "expr_1" "orbiting.y + _point_offsets[1]"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = orbiting.x + _point_offsets[0];
y = orbiting.y + _point_offsets[1];