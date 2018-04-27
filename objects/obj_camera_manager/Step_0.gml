var _mouse_wheel = mouse_wheel_down() - mouse_wheel_up();

var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

zoom_level = clamp(zoom_level + (_mouse_wheel * 0.05), 0.1, 5);
var _rate = 0.2;

var _new_w = lerp(_cam_w, zoom_level * default_zoom_width, _rate);
var _new_h = lerp(_cam_h, zoom_level * default_zoom_height, _rate);

camera_set_view_size(_cam, _new_w, _new_h);

//if (abs(_mouse_wheel) && !mouse_target_locked) {
//	target_x = mouse_x;
//	target_y = mouse_y;
//}

//if (abs(_mouse_wheel)) {
//	mouse_target_locked = true;
//	alarm_set(0,30);
//}
var _move_rate = .1;


var shift_x = camera_get_view_x(view_camera[0]) - (_new_w - _cam_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[0]) - (_new_h - _cam_h) * 0.5;


//var _new_x = lerp(_cam_x, target_x - _cam_w/2, _move_rate);
//var _new_y = lerp(_cam_y, target_y - _cam_h/2, _move_rate);

//camera_set_view_pos(_cam, _new_x, _new_y);

camera_set_view_pos(_cam, shift_x, shift_y);