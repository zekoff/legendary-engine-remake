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
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 72382CD4
	/// @DnDParent : 5981DD1F
	/// @DnDArgument : "expr" "obj_ui_state.selected_layer"
	var l72382CD4_0 = obj_ui_state.selected_layer;
	switch(l72382CD4_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 41A70B47
		/// @DnDParent : 72382CD4
		/// @DnDArgument : "const" ""military""
		case "military":
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3C867774
			/// @DnDInput : 3
			/// @DnDParent : 41A70B47
			/// @DnDArgument : "var" "_starlane"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "scr_check_connected"
			/// @DnDArgument : "arg" "_source_planet_id"
			/// @DnDArgument : "arg_1" "_target_planet_id"
			/// @DnDArgument : "arg_2" "obj_waypoint"
			/// @DnDSaveInfo : "script" "2f912e45-02ae-409f-8e61-16adb589cc7c"
			var _starlane = script_execute(scr_check_connected, _source_planet_id, _target_planet_id, obj_waypoint);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7D87EC41
			/// @DnDInput : 2
			/// @DnDParent : 41A70B47
			/// @DnDArgument : "expr" "_source_planet_id.owner=="player""
			/// @DnDArgument : "expr_1" "((_starlane && _starlane.object_index != obj_waypoint) || !_starlane)"
			if(_source_planet_id.owner=="player" && ((_starlane && _starlane.object_index != obj_waypoint) || !_starlane))
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 52E5F59C
				/// @DnDInput : 2
				/// @DnDParent : 7D87EC41
				/// @DnDArgument : "script" "scr_create_military_waypoint"
				/// @DnDArgument : "arg" "_source_planet_id"
				/// @DnDArgument : "arg_1" "_target_planet_id"
				/// @DnDSaveInfo : "script" "f685dbfc-27ce-4819-ba03-5875962b6aae"
				script_execute(scr_create_military_waypoint, _source_planet_id, _target_planet_id);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7AE5A986
			/// @DnDParent : 41A70B47
			else
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0BFCCD59
				/// @DnDApplyTo : _starlane
				/// @DnDParent : 7AE5A986
				with(_starlane) instance_destroy();
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7FE186B2
		/// @DnDParent : 72382CD4
		/// @DnDArgument : "const" ""economy""
		case "economy":
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5C80962F
			/// @DnDInput : 2
			/// @DnDParent : 7FE186B2
			/// @DnDArgument : "var" "_starlane"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "scr_check_connected"
			/// @DnDArgument : "arg" "_source_planet_id"
			/// @DnDArgument : "arg_1" "_target_planet_id"
			/// @DnDSaveInfo : "script" "2f912e45-02ae-409f-8e61-16adb589cc7c"
			var _starlane = script_execute(scr_check_connected, _source_planet_id, _target_planet_id);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1DA49F70
			/// @DnDInput : 4
			/// @DnDParent : 7FE186B2
			/// @DnDArgument : "expr" "(_starlane && _starlane.object_index != obj_traderoute) || !_starlane"
			/// @DnDArgument : "expr_1" "_source_planet_id.owner=="player""
			/// @DnDArgument : "expr_2" "_target_planet_id.owner=="player""
			/// @DnDArgument : "expr_3" "obj_traderoute"
			if((_starlane && _starlane.object_index != obj_traderoute) || !_starlane && _source_planet_id.owner=="player" && _target_planet_id.owner=="player" && obj_traderoute)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 0BEE240F
				/// @DnDInput : 2
				/// @DnDParent : 1DA49F70
				/// @DnDArgument : "script" "scr_create_traderoute"
				/// @DnDArgument : "arg" "_source_planet_id"
				/// @DnDArgument : "arg_1" "_target_planet_id"
				/// @DnDSaveInfo : "script" "9733ff7a-d2da-48f6-934f-5ac3e876f677"
				script_execute(scr_create_traderoute, _source_planet_id, _target_planet_id);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 29EBF034
			/// @DnDParent : 7FE186B2
			else
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6ED1DF35
				/// @DnDApplyTo : _starlane
				/// @DnDParent : 29EBF034
				with(_starlane) instance_destroy();
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 364FB49C
		/// @DnDParent : 72382CD4
		/// @DnDArgument : "const" ""culture""
		case "culture":
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 62104E21
			/// @DnDInput : 3
			/// @DnDParent : 364FB49C
			/// @DnDArgument : "var" "_starlane"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "script" "scr_check_connected"
			/// @DnDArgument : "arg" "_source_planet_id"
			/// @DnDArgument : "arg_1" "_target_planet_id"
			/// @DnDArgument : "arg_2" "obj_starlane"
			/// @DnDSaveInfo : "script" "2f912e45-02ae-409f-8e61-16adb589cc7c"
			var _starlane = script_execute(scr_check_connected, _source_planet_id, _target_planet_id, obj_starlane);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 42F5D069
			/// @DnDInput : 3
			/// @DnDParent : 364FB49C
			/// @DnDArgument : "expr" "(_starlane && _starlane.object_index != obj_starlane) || !_starlane"
			/// @DnDArgument : "expr_1" "_source_planet_id.owner=="player""
			/// @DnDArgument : "expr_2" "_target_planet_id.owner=="player""
			if((_starlane && _starlane.object_index != obj_starlane) || !_starlane && _source_planet_id.owner=="player" && _target_planet_id.owner=="player")
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 0227FB3D
				/// @DnDInput : 2
				/// @DnDParent : 42F5D069
				/// @DnDArgument : "script" "scr_create_starlane"
				/// @DnDArgument : "arg" "_source_planet_id"
				/// @DnDArgument : "arg_1" "_target_planet_id"
				/// @DnDSaveInfo : "script" "b5211b21-fedf-49f1-802d-f4e7c937679a"
				script_execute(scr_create_starlane, _source_planet_id, _target_planet_id);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0E8E32C8
			/// @DnDParent : 364FB49C
			else
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 12CF6B9E
				/// @DnDApplyTo : _starlane
				/// @DnDParent : 0E8E32C8
				with(_starlane) instance_destroy();
			}
			break;
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
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "drag_target"
drag_target = noone;