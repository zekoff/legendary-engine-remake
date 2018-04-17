// argument0: orbit_distance
// argument1: orbit_angle_deg

var _x = cos(degtorad(argument1)) * argument0 -
	sin(degtorad(argument1)) * argument0;
var _y = sin(degtorad(argument1)) * argument0 +
	cos(degtorad(argument1)) * argument0;
return [_x,_y];