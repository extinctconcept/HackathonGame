if instance_exists(obj_player) {
//x = mouse_x;
//y = mouse_y;
dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
dis = min(300, point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y));
tar_x = obj_player.x + lengthdir_x(dis, dir);
tar_y = obj_player.y + lengthdir_y(dis, dir);
x = tar_x;
y = tar_y;
}

