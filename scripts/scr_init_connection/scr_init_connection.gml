var _dir = point_direction(point_start.x, point_start.y, point_end.x, point_end.y);

x = point_start.x;
y = point_start.y;

image_angle = _dir;

var _dist = point_distance(point_start.x, point_start.y, point_end.x, point_end.y);

var _w = sprite_get_width(sprite_index);

image_xscale = _dist/_w;
image_yscale *= 1;