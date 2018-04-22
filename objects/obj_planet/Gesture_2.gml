/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5BD8943B
/// @DnDArgument : "xpos" "event_data[?"posX"]"
/// @DnDArgument : "ypos" "event_data[?"posY"]"
/// @DnDArgument : "var" "drag_target"
/// @DnDArgument : "objectid" "obj_drag_target"
/// @DnDSaveInfo : "objectid" "02a59920-f8e0-43ed-bbab-e53e97b10e6f"
drag_target = instance_create_layer(event_data[?"posX"], event_data[?"posY"], "Instances", obj_drag_target);