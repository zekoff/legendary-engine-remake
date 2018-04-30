/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 20AD3983
/// @DnDArgument : "steps" "60/spawn_rate"
alarm_set(0, 60/spawn_rate);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 07D63F78
/// @DnDArgument : "steps" "60/growth_rate"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 60/growth_rate);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 662EE521
/// @DnDArgument : "steps" "12"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 12);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 30C40A64
/// @DnDArgument : "var" "spin_rate"
/// @DnDArgument : "min" "-.1"
/// @DnDArgument : "max" ".1"
spin_rate = (random_range(-.1, .1));