/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 48C68345
/// @DnDInput : 2
/// @DnDArgument : "var" "_source_planet_id"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "_target_planet_id"
/// @DnDArgument : "value_1" "argument1"
var _source_planet_id = argument0;
var _target_planet_id = argument1;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4B3C700E
/// @DnDApplyTo : 7cbd185a-39ea-42b8-b84e-78d91651bf52
with(obj_ship_red) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5276EADF
	/// @DnDParent : 4B3C700E
	/// @DnDArgument : "expr" "orbiting == _source_planet_id"
	if(orbiting == _source_planet_id)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BF89DB5
		/// @DnDParent : 5276EADF
		/// @DnDArgument : "expr" "noone"
		/// @DnDArgument : "var" "orbiting"
		orbiting = noone;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54E1267C
		/// @DnDParent : 5276EADF
		/// @DnDArgument : "var" "_fleet_travel_speed"
		/// @DnDArgument : "value" "360"
		var _fleet_travel_speed = 360;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 52E8CAB5
		/// @DnDInput : 2
		/// @DnDParent : 5276EADF
		/// @DnDArgument : "var" "_connected"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "script" "scr_check_connected"
		/// @DnDArgument : "arg" "_source_planet_id"
		/// @DnDArgument : "arg_1" "_target_planet_id"
		/// @DnDSaveInfo : "script" "2f912e45-02ae-409f-8e61-16adb589cc7c"
		var _connected = script_execute(scr_check_connected, _source_planet_id, _target_planet_id);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 08D31A98
		/// @DnDParent : 5276EADF
		/// @DnDArgument : "expr" "_connected"
		if(_connected)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1BEE58EB
			/// @DnDParent : 08D31A98
			/// @DnDArgument : "expr" "_fleet_travel_speed/6"
			/// @DnDArgument : "var" "_fleet_travel_speed"
			_fleet_travel_speed = _fleet_travel_speed/6;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2287BA21
		/// @DnDInput : 7
		/// @DnDParent : 5276EADF
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
		/// @DnDHash : 13C3CFE5
		/// @DnDInput : 6
		/// @DnDParent : 5276EADF
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