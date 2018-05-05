/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A553E7D
/// @DnDInput : 2
/// @DnDArgument : "var" "_source_planet_id"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "_target_planet_id"
/// @DnDArgument : "value_1" "argument1"
var _source_planet_id = argument0;
var _target_planet_id = argument1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3860A83D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_starlane"
/// @DnDArgument : "objectid" "obj_traderoute"
/// @DnDArgument : "layer" ""Traderoutes""
/// @DnDSaveInfo : "objectid" "c16b67d1-1299-4b90-93d9-556d1c9a2d36"
_starlane = instance_create_layer(x + 0, y + 0, "Traderoutes", obj_traderoute);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 149F62EF
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
/// @DnDHash : 660E676B
/// @DnDApplyTo : _starlane
/// @DnDArgument : "script" "scr_init_connection"
/// @DnDSaveInfo : "script" "fc99a1bc-4a2c-444b-aec4-f5aff2aa0ca3"
with(_starlane) {
	script_execute(scr_init_connection);
}