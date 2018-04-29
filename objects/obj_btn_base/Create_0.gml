/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0F385B22
/// @DnDArgument : "colour" "button_color"
image_blend = button_color & $ffffff;
image_alpha = (button_color >> 24) / $ff;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0C9320DA
/// @DnDArgument : "script" "scr_memorize_button_location"
/// @DnDSaveInfo : "script" "84107854-0742-4553-b218-6f4d69c094ed"
script_execute(scr_memorize_button_location);