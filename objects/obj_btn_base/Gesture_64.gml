// Get HUD coordinates of mouse click (device_mouse_x/y)
// Check if click would have fallen inside bounding box of button
// If it would have, dispatch button event
var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
show_debug_message("checking");
if (point_in_rectangle(_x, _y, button_left, button_top, button_right, button_bottom)) {
	show_debug_message("hit");
	scr_button_tap();
}