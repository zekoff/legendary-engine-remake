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
/// @DnDArgument : "objectid" "obj_starlane"
/// @DnDSaveInfo : "objectid" "03a98290-cf1a-4e4a-892a-5ab6a138c3f2"
_starlane = instance_create_layer(x + 0, y + 0, "Instances", obj_starlane);

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
/// @DnDArgument : "script" "scr_init_starlane"
/// @DnDSaveInfo : "script" "fc99a1bc-4a2c-444b-aec4-f5aff2aa0ca3"
with(_starlane) {
	script_execute(scr_init_starlane);
}