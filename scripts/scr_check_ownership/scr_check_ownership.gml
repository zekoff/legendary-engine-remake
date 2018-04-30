/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5555CCDC
/// @DnDInput : 4
/// @DnDArgument : "var" "_player_ships_orbiting"
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var_1" "_enemy_ships_orbiting"
/// @DnDArgument : "value_1" "false"
/// @DnDArgument : "var_2" "_neutral_ships_orbiting"
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "var_3" "_planet"
/// @DnDArgument : "value_3" "self"
var _player_ships_orbiting = false;
var _enemy_ships_orbiting = false;
var _neutral_ships_orbiting = false;
var _planet = self;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 42A3BB70
/// @DnDApplyTo : 7cbd185a-39ea-42b8-b84e-78d91651bf52
with(obj_ship_red) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EA8EDF5
	/// @DnDParent : 42A3BB70
	/// @DnDArgument : "var" "orbiting"
	/// @DnDArgument : "value" "_planet"
	if(orbiting == _planet)
	{
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 57E0310D
		/// @DnDParent : 0EA8EDF5
		/// @DnDArgument : "expr" "owner"
		var l57E0310D_0 = owner;
		switch(l57E0310D_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 2156A608
			/// @DnDParent : 57E0310D
			/// @DnDArgument : "const" ""player""
			case "player":
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 623C2D61
				/// @DnDParent : 2156A608
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "_player_ships_orbiting"
				_player_ships_orbiting = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1DE9AD0D
			/// @DnDParent : 57E0310D
			/// @DnDArgument : "const" ""enemy""
			case "enemy":
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0953D502
				/// @DnDParent : 1DE9AD0D
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "_enemy_ships_orbiting"
				_enemy_ships_orbiting = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 7D480FC0
			/// @DnDParent : 57E0310D
			/// @DnDArgument : "const" ""neutral""
			case "neutral":
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 58E6053A
				/// @DnDParent : 7D480FC0
				/// @DnDArgument : "msg" ""enemy ship detected""
				show_debug_message(string("enemy ship detected"));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 183C3388
				/// @DnDParent : 7D480FC0
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "_neutral_ships_orbiting"
				_neutral_ships_orbiting = true;
				break;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B50C9A8
/// @DnDArgument : "expr" "_player_ships_orbiting && !_enemy_ships_orbiting && !_neutral_ships_orbiting"
if(_player_ships_orbiting && !_enemy_ships_orbiting && !_neutral_ships_orbiting)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71F68CD0
	/// @DnDParent : 0B50C9A8
	/// @DnDArgument : "expr" ""player""
	/// @DnDArgument : "var" "owner"
	owner = "player";
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25BB5F42
/// @DnDArgument : "expr" "!_player_ships_orbiting && _enemy_ships_orbiting && !_neutral_ships_orbiting"
if(!_player_ships_orbiting && _enemy_ships_orbiting && !_neutral_ships_orbiting)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B4F30C9
	/// @DnDParent : 25BB5F42
	/// @DnDArgument : "expr" ""enemy""
	/// @DnDArgument : "var" "owner"
	owner = "enemy";
}