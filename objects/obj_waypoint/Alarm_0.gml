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
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E6D4DF8
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "var" "_fleet_travel_speed"
			/// @DnDArgument : "value" "360"
			var _fleet_travel_speed = 360;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4502EDD4
			/// @DnDInput : 2
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "var" "_connected"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "scr_check_connected"
			/// @DnDArgument : "arg" "_source_planet_id"
			/// @DnDArgument : "arg_1" "_target_planet_id"
			/// @DnDSaveInfo : "script" "2f912e45-02ae-409f-8e61-16adb589cc7c"
			var _connected = script_execute(scr_check_connected, _source_planet_id, _target_planet_id);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7B1B2E83
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "expr" "_connected"
			if(_connected)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4CAF7350
				/// @DnDParent : 7B1B2E83
				/// @DnDArgument : "expr" "_fleet_travel_speed/6"
				/// @DnDArgument : "var" "_fleet_travel_speed"
				_fleet_travel_speed = _fleet_travel_speed/6;
			}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5C1CEBE7
			/// @DnDInput : 7
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "var" "_tween"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "TweenEasyMove"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y"
			/// @DnDArgument : "arg_2" "_target_planet_id.x"
			/// @DnDArgument : "arg_3" "_target_planet_id.y"
			/// @DnDArgument : "arg_4" "0"
			/// @DnDArgument : "arg_5" "_fleet_travel_speed"
			/// @DnDArgument : "arg_6" "EaseLinear"
			/// @DnDSaveInfo : "script" "145cd80a-8de0-483d-8ca5-0d6484d42eb2"
			var _tween = script_execute(TweenEasyMove, x, y, _target_planet_id.x, _target_planet_id.y, 0, _fleet_travel_speed, EaseLinear);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0C59EC7C
			/// @DnDInput : 6
			/// @DnDParent : 225BBC1F
			/// @DnDArgument : "script" "TweenAddCallback"
			/// @DnDArgument : "arg" "_tween"
			/// @DnDArgument : "arg_1" "TWEEN_EV_FINISH"
			/// @DnDArgument : "arg_2" "self"
			/// @DnDArgument : "arg_3" "scr_enter_orbit"
			/// @DnDArgument : "arg_4" "self"
			/// @DnDArgument : "arg_5" "_target_planet_id"
			/// @DnDSaveInfo : "script" "de925728-b5cb-40cc-9a49-6c8869e6ca62"
			script_execute(TweenAddCallback, _tween, TWEEN_EV_FINISH, self, scr_enter_orbit, self, _target_planet_id);
		}
	}
}