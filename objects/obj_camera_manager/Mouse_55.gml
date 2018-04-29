var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

var _new_x = mouse_x - _cam_w/2;
var _new_y = mouse_y - _cam_h/2;

//var shift_x = camera_get_view_x(view_camera[0]) - (_new_w - _cam_w) * 0.5;
//var shift_y = camera_get_view_y(view_camera[0]) - (_new_h - _cam_h) * 0.5;

//camera_set_view_pos(_cam, _new_x, _new_y);
camera_target_x = mouse_x;
camera_target_y = mouse_y;