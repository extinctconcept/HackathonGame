direction = point_direction(x,y,mouse_x, mouse_y);
direction = direction + random_range(-3,3);

speed = 10;
image_angle = direction;

audio_play_sound(snd_gunshot, 10, false);