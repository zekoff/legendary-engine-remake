var _x, _y;
if (!surface_exists(global.aura_surface)) {
	global.aura_surface = surface_create(view_get_wport(0),view_get_hport(0));
}
surface_set_target(global.aura_surface);
// draw
with (obj_influence_aura) {
	draw_self();
}
surface_reset_target();
draw_surface(global.aura_surface, 0, 0);