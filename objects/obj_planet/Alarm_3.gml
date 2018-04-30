/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AECB427
/// @DnDArgument : "code" "/// @description Combat between military ships"
/// @description Combat between military ships

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6D6E74D5
/// @DnDArgument : "steps" "12"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 12);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 49E90008
/// @DnDInput : 3
/// @DnDArgument : "var" "_player_ship"
/// @DnDArgument : "value" "noone"
/// @DnDArgument : "var_1" "_opposing_ship"
/// @DnDArgument : "value_1" "noone"
/// @DnDArgument : "var_2" "_planet"
/// @DnDArgument : "value_2" "id"
var _player_ship = noone;
var _opposing_ship = noone;
var _planet = id;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3E2F8A84
/// @DnDApplyTo : 7cbd185a-39ea-42b8-b84e-78d91651bf52
with(obj_ship_red) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10E38193
	/// @DnDParent : 3E2F8A84
	/// @DnDArgument : "var" "orbiting"
	/// @DnDArgument : "value" "_planet"
	if(orbiting == _planet)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4240E08F
		/// @DnDParent : 10E38193
		/// @DnDArgument : "expr" "owner == "player""
		if(owner == "player")
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D80C602
			/// @DnDParent : 4240E08F
			/// @DnDArgument : "expr" "self"
			/// @DnDArgument : "var" "_player_ship"
			_player_ship = self;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 145321A7
		/// @DnDParent : 10E38193
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CBA1D90
			/// @DnDParent : 145321A7
			/// @DnDArgument : "expr" "self"
			/// @DnDArgument : "var" "_opposing_ship"
			_opposing_ship = self;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 33E74DA6
/// @DnDArgument : "expr" "_player_ship && _opposing_ship"
if(_player_ship && _opposing_ship)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6BD6A759
	/// @DnDApplyTo : _player_ship
	/// @DnDParent : 33E74DA6
	with(_player_ship) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 369717F3
	/// @DnDApplyTo : _opposing_ship
	/// @DnDParent : 33E74DA6
	with(_opposing_ship) instance_destroy();
}