/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 62AFD4BB
/// @DnDArgument : "var" "_source_planet_id"
/// @DnDArgument : "value" "id"
var _source_planet_id = id;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 5981DD1F
/// @DnDArgument : "x" "event_data[?"posX"]"
/// @DnDArgument : "y" "event_data[?"posY"]"
/// @DnDArgument : "target" "_target_planet_id"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_planet"
/// @DnDSaveInfo : "object" "17553e9a-be22-404d-a7d3-c60ffa8340f9"
var l5981DD1F_0 = instance_place(event_data[?"posX"], event_data[?"posY"], obj_planet);
var _target_planet_id = l5981DD1F_0;
if ((l5981DD1F_0 > 0))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6FB872DF
	/// @DnDParent : 5981DD1F
	/// @DnDArgument : "msg" ""hit""
	show_debug_message(string("hit"));

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 1B5F37DE
	/// @DnDApplyTo : 7cbd185a-39ea-42b8-b84e-78d91651bf52
	/// @DnDParent : 5981DD1F
	with(obj_ship_red) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3212C35B
		/// @DnDParent : 1B5F37DE
		/// @DnDArgument : "expr" "orbiting == _source_planet_id"
		if(orbiting == _source_planet_id)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38EDEFB2
			/// @DnDParent : 3212C35B
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "orbiting"
			orbiting = noone;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6BA5E154
			/// @DnDInput : 7
			/// @DnDParent : 3212C35B
			/// @DnDArgument : "var" "_tween"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "TweenEasyMove"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y"
			/// @DnDArgument : "arg_2" "_target_planet_id.x"
			/// @DnDArgument : "arg_3" "_target_planet_id.y"
			/// @DnDArgument : "arg_4" "0"
			/// @DnDArgument : "arg_5" "60"
			/// @DnDArgument : "arg_6" "EaseInOutQuad"
			/// @DnDSaveInfo : "script" "145cd80a-8de0-483d-8ca5-0d6484d42eb2"
			var _tween = script_execute(TweenEasyMove, x, y, _target_planet_id.x, _target_planet_id.y, 0, 60, EaseInOutQuad);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2E279500
			/// @DnDInput : 6
			/// @DnDParent : 3212C35B
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

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 625F36FA
/// @DnDApplyTo : drag_target
with(drag_target) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FEFADB8
/// @DnDArgument : "var" "drag_target"
drag_target = 0;