//Get AI Input - when to go one way, when to go another...
//Calculate Movement
vsp = vsp + grv;


//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall)) {
    while (!place_meeting(x+sign(hsp),y,obj_wall)) {
        x = x + sign(hsp);
    }
    hsp = -hsp;
}


//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)) {
    while (!place_meeting(x,y+sign(vsp),obj_wall)) {
        y = y + sign(vsp);
    }
    vsp = 0;
}


// Floor Collision Horizontal
if(place_meeting(x, y + vsp, obj_floor)) {
	while(!place_meeting(x, y + sign(vsp), obj_floor)){
		y = y + sign(vsp);
	}
	vsp = 0;
 }

 x = x + hsp;
 y = y + vsp;