/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F70DF86
/// @DnDArgument : "var" "_planet_id"
/// @DnDArgument : "value" "id"
var _planet_id = id;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3D5053EC
/// @DnDApplyTo : 0cbcf041-ac49-4c86-a507-b19340c76ea2
with(obj_ship_green) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 15371B32
	/// @DnDParent : 3D5053EC
	/// @DnDArgument : "expr" "orbiting==_planet_id && owner=="player""
	if(orbiting==_planet_id && owner=="player")
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12D4E784
		/// @DnDParent : 15371B32
		/// @DnDArgument : "expr" ".01"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_empire_manager.money"
		obj_empire_manager.money += .01;
	}
}