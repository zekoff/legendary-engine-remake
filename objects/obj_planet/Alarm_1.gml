/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73F96D41
/// @DnDArgument : "code" "/// @description Spawn economy ship"
/// @description Spawn economy ship

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5DE48154
/// @DnDArgument : "steps" "60/growth_rate"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 60/growth_rate);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A7E436E
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_new_ship"
/// @DnDArgument : "objectid" "obj_ship_green"
/// @DnDSaveInfo : "objectid" "0cbcf041-ac49-4c86-a507-b19340c76ea2"
_new_ship = instance_create_layer(x + 0, y + 0, "Instances", obj_ship_green);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60A5210B
/// @DnDArgument : "expr" ""player""
/// @DnDArgument : "var" "_new_ship.owner"
_new_ship.owner = "player";

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 757AC0AA
/// @DnDInput : 2
/// @DnDArgument : "script" "scr_enter_orbit"
/// @DnDArgument : "arg" "_new_ship"
/// @DnDArgument : "arg_1" "self"
/// @DnDSaveInfo : "script" "3dc6b96c-0375-4758-baf9-834ada76d6ba"
script_execute(scr_enter_orbit, _new_ship, self);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4B583033
/// @DnDApplyTo : _new_ship
/// @DnDArgument : "script" "scr_init_ship"
/// @DnDSaveInfo : "script" "7f1a7b2d-1c7d-4725-8b97-89ffc47edcd8"
with(_new_ship) {
	script_execute(scr_init_ship);
}