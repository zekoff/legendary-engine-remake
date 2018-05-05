/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EADC4DB
/// @DnDArgument : "code" "/// @desc Manage influence for a planet each step. Required context: planet"
/// @desc Manage influence for a planet each step. Required context: planet

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E81FBFD
/// @DnDInput : 2
/// @DnDArgument : "expr" "influence_aura == noone"
/// @DnDArgument : "expr_1" "owner == "player""
if(influence_aura == noone && owner == "player")
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1944A86E
	/// @DnDParent : 2E81FBFD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "influence_aura"
	/// @DnDArgument : "objectid" "obj_influence_aura"
	/// @DnDArgument : "layer" ""Influence""
	/// @DnDSaveInfo : "objectid" "8f29fde1-6d78-4273-a33c-10ee264e9759"
	influence_aura = instance_create_layer(x + 0, y + 0, "Influence", obj_influence_aura);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35E16DE4
/// @DnDArgument : "code" "influence = min(citizens, influence+.1);$(13_10)var _diameter = influence + 70;$(13_10)var _scale = 1/sprite_get_height(spr_aura) * _diameter;"
influence = min(citizens, influence+.1);
var _diameter = influence + 70;
var _scale = 1/sprite_get_height(spr_aura) * _diameter;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0C67D381
/// @DnDApplyTo : influence_aura
/// @DnDArgument : "xscale" "_scale"
/// @DnDArgument : "yscale" "_scale"
with(influence_aura) {
image_xscale = _scale;
image_yscale = _scale;
}