/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 14442F41
/// @DnDInput : 4
/// @DnDArgument : "expr" "obj_ui_state.selected_layer != noone"
/// @DnDArgument : "expr_1" "slots_open > 0"
/// @DnDArgument : "expr_2" "obj_empire_manager.money >= 100"
/// @DnDArgument : "expr_3" "owner == "player""
if(obj_ui_state.selected_layer != noone && slots_open > 0 && obj_empire_manager.money >= 100 && owner == "player")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C131A48
	/// @DnDInput : 2
	/// @DnDParent : 14442F41
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-100"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "slots_open"
	/// @DnDArgument : "var_1" "obj_empire_manager.money"
	slots_open += -1;
	obj_empire_manager.money += -100;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 0AC44EAB
	/// @DnDParent : 14442F41
	/// @DnDArgument : "expr" "obj_ui_state.selected_layer"
	var l0AC44EAB_0 = obj_ui_state.selected_layer;
	switch(l0AC44EAB_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 18DB3F92
		/// @DnDParent : 0AC44EAB
		/// @DnDArgument : "const" ""military""
		case "military":
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 636E1039
			/// @DnDParent : 18DB3F92
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bldg"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_shipyard"
			/// @DnDSaveInfo : "objectid" "374e7c98-7fe5-4a0c-922e-9b72427ecd75"
			var _bldg = instance_create_layer(x + 0, y + 0, "Instances", obj_shipyard);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A3B1EF7
			/// @DnDParent : 18DB3F92
			/// @DnDArgument : "expr" "id"
			/// @DnDArgument : "var" "_bldg.on_planet"
			_bldg.on_planet = id;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74071791
			/// @DnDParent : 18DB3F92
			/// @DnDArgument : "expr" "360 / slots_total * slots_open + image_angle"
			/// @DnDArgument : "var" "_bldg.image_angle"
			_bldg.image_angle = 360 / slots_total * slots_open + image_angle;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 103E59D1
			/// @DnDParent : 18DB3F92
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spawn_rate"
			spawn_rate += 1;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3C146649
		/// @DnDParent : 0AC44EAB
		/// @DnDArgument : "const" ""economy""
		case "economy":
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4A1671B4
			/// @DnDParent : 3C146649
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bldg"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_farm"
			/// @DnDSaveInfo : "objectid" "ef60b4b4-b554-4bc0-8038-cbf549152da7"
			var _bldg = instance_create_layer(x + 0, y + 0, "Instances", obj_farm);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 007D867B
			/// @DnDParent : 3C146649
			/// @DnDArgument : "expr" "id"
			/// @DnDArgument : "var" "_bldg.on_planet"
			_bldg.on_planet = id;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 069143A2
			/// @DnDParent : 3C146649
			/// @DnDArgument : "expr" "360 / slots_total * slots_open + image_angle"
			/// @DnDArgument : "var" "_bldg.image_angle"
			_bldg.image_angle = 360 / slots_total * slots_open + image_angle;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A7F3CAE
			/// @DnDParent : 3C146649
			/// @DnDArgument : "expr" ".02"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "growth_rate"
			growth_rate += .02;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6855050D
		/// @DnDParent : 0AC44EAB
		/// @DnDArgument : "const" ""culture""
		case "culture":
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 229E4E0B
			/// @DnDParent : 6855050D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bldg"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_city"
			/// @DnDSaveInfo : "objectid" "f1855cf5-64f8-48cc-aa12-cb6b98ccadd8"
			var _bldg = instance_create_layer(x + 0, y + 0, "Instances", obj_city);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 247B4B98
			/// @DnDParent : 6855050D
			/// @DnDArgument : "expr" "id"
			/// @DnDArgument : "var" "_bldg.on_planet"
			_bldg.on_planet = id;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78A5FD23
			/// @DnDParent : 6855050D
			/// @DnDArgument : "expr" "360 / slots_total * slots_open + image_angle"
			/// @DnDArgument : "var" "_bldg.image_angle"
			_bldg.image_angle = 360 / slots_total * slots_open + image_angle;
			break;
	}
}