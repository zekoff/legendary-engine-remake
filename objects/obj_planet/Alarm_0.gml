/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 375E9931
/// @DnDArgument : "steps" "60/spawn_rate"
alarm_set(0, 60/spawn_rate);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 54BB96F9
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_new_ship"
/// @DnDArgument : "objectid" "obj_ship_red"
/// @DnDSaveInfo : "objectid" "7cbd185a-39ea-42b8-b84e-78d91651bf52"
_new_ship = instance_create_layer(x + 0, y + 0, "Instances", obj_ship_red);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1808FCD3
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "_new_ship.orbiting"
_new_ship.orbiting = id;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5758F01E
/// @DnDApplyTo : _new_ship
/// @DnDArgument : "script" "scr_init_ship"
/// @DnDSaveInfo : "script" "7f1a7b2d-1c7d-4725-8b97-89ffc47edcd8"
with(_new_ship) {
	script_execute(scr_init_ship);
}