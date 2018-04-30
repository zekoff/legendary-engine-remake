/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 370881F3
/// @DnDArgument : "script" "scr_check_ownership"
/// @DnDSaveInfo : "script" "144d3d0b-0c3a-4505-a126-c54f4e7efe1b"
script_execute(scr_check_ownership);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 683E5C1E
/// @DnDArgument : "expr" "owner"
var l683E5C1E_0 = owner;
switch(l683E5C1E_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0FCF8DEA
	/// @DnDParent : 683E5C1E
	/// @DnDArgument : "const" ""player""
	case "player":
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0A9CB57F
		/// @DnDParent : 0FCF8DEA
		/// @DnDArgument : "colour" "$FFFF0000"
		image_blend = $FFFF0000 & $ffffff;
		image_alpha = ($FFFF0000 >> 24) / $ff;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0FA9ACA0
	/// @DnDParent : 683E5C1E
	/// @DnDArgument : "const" ""enemy""
	case "enemy":
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 08FF834C
		/// @DnDParent : 0FA9ACA0
		/// @DnDArgument : "colour" "$FF0000FF"
		image_blend = $FF0000FF & $ffffff;
		image_alpha = ($FF0000FF >> 24) / $ff;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0FB38D0B
	/// @DnDParent : 683E5C1E
	/// @DnDArgument : "const" "noone"
	case noone:
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7EFB3003
		/// @DnDParent : 0FB38D0B
		image_blend = $FFFFFFFF & $ffffff;
		image_alpha = ($FFFFFFFF >> 24) / $ff;
		break;
}

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