/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7431FF36
/// @DnDInput : 2
/// @DnDArgument : "var" "_source_planet_id"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "_target_planet_id"
/// @DnDArgument : "value_1" "argument1"
var _source_planet_id = argument0;
var _target_planet_id = argument1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 32C51916
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_starlane"
/// @DnDArgument : "objectid" "obj_waypoint"
/// @DnDArgument : "layer" ""MilitaryConnections""
/// @DnDSaveInfo : "objectid" "f360f00b-5c47-400a-82ad-53ec370be93f"
_starlane = instance_create_layer(x + 0, y + 0, "MilitaryConnections", obj_waypoint);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72184FDB
/// @DnDInput : 2
/// @DnDApplyTo : _starlane
/// @DnDArgument : "expr" "_source_planet_id"
/// @DnDArgument : "expr_1" "_target_planet_id"
/// @DnDArgument : "var" "point_start"
/// @DnDArgument : "var_1" "point_end"
with(_starlane) {
point_start = _source_planet_id;
point_end = _target_planet_id;

}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0FC3FEDC
/// @DnDApplyTo : _starlane
/// @DnDArgument : "script" "scr_init_connection"
/// @DnDSaveInfo : "script" "fc99a1bc-4a2c-444b-aec4-f5aff2aa0ca3"
with(_starlane) {
	script_execute(scr_init_connection);
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 042ADBF1
/// @DnDApplyTo : _starlane
/// @DnDArgument : "colour" "$FF0000FF"
with(_starlane) {
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;
}