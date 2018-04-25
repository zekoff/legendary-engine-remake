/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6B3135FB
/// @DnDInput : 4
/// @DnDArgument : "var" "_dir"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_direction"
/// @DnDArgument : "arg" "point_start.x"
/// @DnDArgument : "arg_1" "point_start.y"
/// @DnDArgument : "arg_2" "point_end.x"
/// @DnDArgument : "arg_3" "point_end.y"
var _dir = point_direction(point_start.x, point_start.y, point_end.x, point_end.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 51C6EAA8
/// @DnDInput : 2
/// @DnDArgument : "expr" "point_start.x"
/// @DnDArgument : "expr_1" "point_start.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = point_start.x;
y = point_start.y;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 33E578FF
/// @DnDArgument : "angle" "_dir"
image_angle = _dir;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 33F1AF87
/// @DnDInput : 4
/// @DnDArgument : "var" "_dist"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_distance"
/// @DnDArgument : "arg" "point_start.x"
/// @DnDArgument : "arg_1" "point_start.y"
/// @DnDArgument : "arg_2" "point_end.x"
/// @DnDArgument : "arg_3" "point_end.y"
var _dist = point_distance(point_start.x, point_start.y, point_end.x, point_end.y);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 373FDC2A
/// @DnDArgument : "var" "_w"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "sprite_get_width"
/// @DnDArgument : "arg" "sprite_index"
var _w = sprite_get_width(sprite_index);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7B9A5A14
/// @DnDArgument : "xscale" "_dist/_w"
image_xscale = _dist/_w;
image_yscale = 1;