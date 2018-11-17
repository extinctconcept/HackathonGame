x += (xTo - x)/2;
y += (yTo - y)/2;

if(follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0 , 0, 1, 0);
camera_set_view_mat(camera, vm);

// parallax code below

var backdrop = layer_get_id("bkg_sky");
var background = layer_get_id("bkg_city");
var foreground = layer_get_id("bkg_foreground");

layer_x(backdrop ,lerp(0, x, 0.75));
layer_x(background ,lerp(0, x, 0.6));
layer_x(foreground ,lerp(0, x, 0.2));