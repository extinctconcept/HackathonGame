/// @description Insert description here
// You can write your code in this editor

var dirX = (other.x > x)?1:-1;
var dirY = (other.y > y)?1:-1;

with (other) {
    playerHealth -= other.collisionDamage;
    if (playerHealth < 0) {
        playerHealth = 0;
    }
    posX = dirX * walkspd;

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
 posY = dirY * walkspd; 
 
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
 if(place_meeting(x + posX, y, obj_wall)) {
	while(!place_meeting(x + sign(posX), y, obj_wall)){
		x = x + sign(posX);
	}
	posX = 0;
 }
 

 
 // Wall Collision Vertical
  if(place_meeting(x, y + posY, obj_wall)) {
	while(!place_meeting(x, y + sign(posY), obj_wall)){
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
 
 
}