key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))

// horizontal movement
var move = key_right - key_left;
posX = move * walkspd;

if(posX > 1) {
	image_xscale = sign(posX);
	sprite_index = spr_player_walk;
} else if (posX < 0) {
	image_xscale = sign(posX);
	sprite_index = spr_player_walk;
} else {
	sprite_index = spr_player;
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
 
 // **************** COLLISION DETECTION *******************//
 // Wall Collision Horizontal
 if(place_meeting(x + posX, y, obj_wall) || (place_meeting(x + posX, y, obj_door) && obj_door.closed)) {
	while(!place_meeting(x + sign(posX), y, obj_wall) && !place_meeting(x + sign(posX), y, obj_door)){
		x = x + sign(posX);
	}
	posX = 0;
 }
 

 
 // Wall Collision Vertical
  if(place_meeting(x, y + posY, obj_wall || (place_meeting(x, y + posY, obj_door) && obj_door.closed))) {
	while(!place_meeting(x, y + sign(posY), obj_wall) && !place_meeting(x + sign(posX), y, obj_door)){
		y = y + sign(posY);
	}
	posY = 0;
 }
 
 
 
 
 // Floor Collision Horizontal
 if(place_meeting(x + posX, y, obj_floor)) {
	while(!place_meeting(x + sign(posX), y, obj_floor)){
		x = x + sign(posX);
	}
	posX = 0;
 }
 

 
 // Floor Collision Vertical
  if(place_meeting(x, y + posY, obj_floor)) {
	while(!place_meeting(x, y + sign(posY), obj_floor)){
		y = y + sign(posY);
	}
	posY = 0;
 }
 
 x = x + posX;
 y = y + posY;
 
 
// **************** END COLLISION DETECTION *******************//


if( mouse_check_button(mb_left)) && (bulletCooldown < 1) {
	instance_create_layer(obj_player.x, obj_player.y, layer, obj_projectile1);
	bulletCooldown = 15;
}

bulletCooldown -= 1;