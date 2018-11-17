/// @description Draw health and other stuff

draw_set_color(c_black);
draw_set_alpha(0.9);
draw_roundrect(20, window_get_height() - 20, window_get_width() - 20, window_get_height() - 220, false);
draw_set_font(fnt_vcr);
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_right);
if (!readSign) {
draw_text((window_get_width() / 2), window_get_height() - 100, "How are you feeling?    "); 
draw_set_halign(fa_left);
draw_text_transformed((window_get_width() / 2), window_get_height() - 100, 
    string(obj_player.playerHealth) + "%", 1.5, 1.5, 0);
var spr_index = ceil(obj_player.playerHealth / 10) - 1;
if (spr_index < 0) {
    spr_index = 0;
}
draw_sprite(spr_health_indicator, spr_index, (window_get_width() / 2) + 200, window_get_height() - 100);
}

else {
    draw_set_halign(fa_center);
    draw_text((window_get_width() / 2), window_get_height() - 100, signText); 
}