key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))

// horizontal movement
var move = key_right - key_left;
posX = move * walkspd;

if(posX > 1) {
	image_xscale = sign(posX);
} else if (posX < 0) {
	image_xscale = sign(posX);
}

 // Gravity
 posY = posY + grav; 
 
 // Jumping
 if(place_meeting(x, y + 1, obj_floor)) {
	jumpCurr = jumpNum;
 }
 
 if (key_up && jumpCurr > 0) {
	jumpCurr -= 1;
	posY = -11;
 }
 
 
 // Image blending note obj_player.image_blend = make_colour_hsv(156, 100, 255);
 
 
 // Wall Collision Horizontal
 if(place_meeting(x + posX, y, obj_wall)) {
	while(!place_meeting(x + posX, y, obj_wall)){
		x = x + sign(posX);
	}
	posX = 0;
 }
 
 x = x + posX;
 
 // Wall Collision Vertical
  if(place_meeting(x, y + posY, obj_wall)) {
	while(!place_meeting(x, y + posY, obj_wall)){
		y = y + sign(posY);
	}
	posY = 0;
 }
 
 y = y + posY;
 
 
 // Floor Collision Horizontal
 if(place_meeting(x + posX, y, obj_floor)) {
	while(!place_meeting(x + posX, y, obj_floor)){
		x = x + sign(posX);
	}
	posX = 0;
 }
 
 x = x + posX;
 
 // Floor Collision Vertical
  if(place_meeting(x, y + posY, obj_floor)) {
	while(!place_meeting(x, y + posY, obj_floor)){
		y = y + sign(posY);
	}
	posY = 0;
 }
 
 y = y + posY;
 
 
 // adding a dumb comment
 