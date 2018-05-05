/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78667C27
/// @DnDArgument : "code" "/// @description Send ships along waypoint"
/// @description Send ships along waypoint

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F87F65B
/// @DnDArgument : "steps" "waypoint_timer"
alarm_set(0, waypoint_timer);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 05B333BA
/// @DnDArgument : "var" "_ship"
/// @DnDArgument : "value" "noone"
var _ship = noone;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 05D3FCAB
/// @DnDApplyTo : 7cbd185a-39ea-42b8-b84e-78d91651bf52
with(obj_ship_red) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 55758614
	/// @DnDParent : 05D3FCAB
	/// @DnDArgument : "expr" "orbiting = other.point_start.id"
	if(orbiting = other.point_start.id)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E713866
		/// @DnDParent : 55758614
		/// @DnDArgument : "expr" "self"
		/// @DnDArgument : "var" "_ship"
		_ship = self;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0EA59624
/// @DnDArgument : "expr" "_ship"
if(_ship)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71A8CA4B
	/// @DnDInput : 2
	/// @DnDParent : 0EA59624
	/// @DnDArgument : "var" "_source_planet_id"
	/// @DnDArgument : "value" "point_start"
	/// @DnDArgument : "var_1" "_target_planet_id"
	/// @DnDArgument : "value_1" "point_end"
	var _source_planet_id = point_start;
	var _target_planet_id = point_end;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6D41DB07
	/// @DnDApplyTo : _ship
	/// @DnDParent : 0EA59624
	with(_ship) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 225BBC1F
		/// @DnDParent : 6D41DB07
		/// @DnDArgument : "expr" "orbiting == _source_planet_id"
		if(orbiting == _source_planet_id)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F4BDE12
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "orbiting"
			orbiting = noone;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 320ADBFA
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "script" "scr_send_ship_to_point"
			/// @DnDArgument : "arg" "_target_planet_id"
			/// @DnDSaveInfo : "script" "3f808bc3-6a20-4aa9-bc48-6498ba4d392e"
			script_execute(scr_send_ship_to_point, _target_planet_id);
		}
	}
}