/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 569A1FBE
/// @DnDArgument : "code" "/// @desc Manage citizen growth each step. Context: planet$(13_10)// Calculate max # citizens planet can support$(13_10)// Based on base amount and number of cities$(13_10)// If current citizens is lower than base amount, grow a bit$(13_10)var _num_cities = 0;$(13_10)var _citizens_per_city = 250;$(13_10)var _base_citizens = 100;"
/// @desc Manage citizen growth each step. Context: planet
// Calculate max # citizens planet can support
// Based on base amount and number of cities
// If current citizens is lower than base amount, grow a bit
var _num_cities = 0;
var _citizens_per_city = 250;
var _base_citizens = 100;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 56252045
/// @DnDApplyTo : f1855cf5-64f8-48cc-aa12-cb6b98ccadd8
with(obj_city) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 29007F3A
	/// @DnDParent : 56252045
	/// @DnDArgument : "expr" "on_planet = other.id"
	if(on_planet = other.id)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A8B0C86
		/// @DnDParent : 29007F3A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_num_cities"
		_num_cities += 1;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74DC79D9
/// @DnDArgument : "code" "citizens = min(_citizens_per_city * _num_cities + _base_citizens, citizens + 0.1);"
citizens = min(_citizens_per_city * _num_cities + _base_citizens, citizens + 0.1);