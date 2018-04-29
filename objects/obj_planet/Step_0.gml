/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1D0FCE98
/// @DnDArgument : "script" "scr_generate_income"
/// @DnDSaveInfo : "script" "71a2307e-31bb-4692-8b8f-de9b1a112a20"
script_execute(scr_generate_income);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 144958CE
/// @DnDArgument : "angle" "spin_rate"
/// @DnDArgument : "angle_relative" "1"
image_angle += spin_rate;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 726E703B
/// @DnDInput : 2
/// @DnDArgument : "var" "_spin_rate"
/// @DnDArgument : "value" "spin_rate"
/// @DnDArgument : "var_1" "_planet_id"
/// @DnDArgument : "value_1" "id"
var _spin_rate = spin_rate;
var _planet_id = id;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 030A6BD9
/// @DnDApplyTo : 72f41c70-27d9-4954-836d-0981f2b85cd3
with(obj_base) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4701342B
	/// @DnDParent : 030A6BD9
	/// @DnDArgument : "var" "on_planet"
	/// @DnDArgument : "value" "_planet_id"
	if(on_planet == _planet_id)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 0C6AD948
		/// @DnDParent : 4701342B
		/// @DnDArgument : "angle" "_spin_rate"
		/// @DnDArgument : "angle_relative" "1"
		image_angle += _spin_rate;
	}
}