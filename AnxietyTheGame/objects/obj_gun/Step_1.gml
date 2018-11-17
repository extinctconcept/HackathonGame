x = obj_player.x;
y = obj_player.y + 5;

image_angle = point_direction(x,y,mouse_x,mouse_y);

recoil = max(0, recoil-1);

if(mouse_check_button(mb_left)){
	recoil = 4;	
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;	
}