//if (!dragging_camera) {
//	dragging_camera = true;
//	camera_drag_start_x = mouse_x;
//	camera_drag_start_y = mouse_y;
//	camera_start_origin_x = camera_get_view_x(view_camera[0]);
//	camera_start_origin_y = camera_get_view_y(view_camera[0]);
//}

//if (dragging_camera) {
//	var _cam = view_camera[0];
//	//var _cam_x = camera_get_view_x(_cam);
//	//var _cam_y = camera_get_view_y(_cam);
//	//var _cam_w = camera_get_view_width(_cam);
//	//var _cam_h = camera_get_view_height(_cam);
	
//	var _new_x = camera_start_origin_x + (camera_drag_start_x - mouse_x);
//	var _new_y = camera_start_origin_y + (camera_drag_start_y - mouse_y);

//	camera_set_view_pos(_cam, _new_x, _new_y);
//}