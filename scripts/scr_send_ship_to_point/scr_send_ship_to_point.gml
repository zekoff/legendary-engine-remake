/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F25AC67
/// @DnDArgument : "code" "/// @desc Send ship to new planet/target$(13_10)/// @param {real} target Planet where you want ship to go$(13_10)$(13_10)travel_target = argument0;$(13_10)var _speed = travel_speed;$(13_10)if (path_index) path_delete(path_index);$(13_10)var _connected = noone;$(13_10)if (orbiting) _connected = scr_check_connected(orbiting, travel_target, obj_starlane);$(13_10)orbiting = noone;$(13_10)if (_connected && _connected.object_index == obj_starlane) _speed *= 8;$(13_10)var _new_path = path_add();$(13_10)path_set_closed(_new_path, false);$(13_10)path_add_point(_new_path, x, y, 100);$(13_10)path_add_point(_new_path, travel_target.x, travel_target.y, 100);$(13_10)path_start(_new_path, _speed, path_action_stop, true);$(13_10)image_angle = point_direction(x, y, travel_target.x, travel_target.y);"
/// @desc Send ship to new planet/target
/// @param {real} target Planet where you want ship to go

travel_target = argument0;
var _speed = travel_speed;
if (path_index) path_delete(path_index);
var _connected = noone;
if (orbiting) _connected = scr_check_connected(orbiting, travel_target, obj_starlane);
orbiting = noone;
if (_connected && _connected.object_index == obj_starlane) _speed *= 8;
var _new_path = path_add();
path_set_closed(_new_path, false);
path_add_point(_new_path, x, y, 100);
path_add_point(_new_path, travel_target.x, travel_target.y, 100);
path_start(_new_path, _speed, path_action_stop, true);
image_angle = point_direction(x, y, travel_target.x, travel_target.y);