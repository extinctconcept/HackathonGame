/// @description Draw health and other stuff

draw_set_font(fnt_vcr);
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_right);
draw_text((window_get_width() / 2), window_get_height() - 100, "How are you feeling?    "); 
draw_set_halign(fa_left);
draw_text_transformed((window_get_width() / 2), window_get_height() - 100, 
    string(obj_player.playerHealth) + "%", 1.5, 1.5, 0);