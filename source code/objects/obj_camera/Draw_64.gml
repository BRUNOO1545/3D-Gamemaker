// draw fps
draw_set_halign(fa_left);
draw_text(32, 32, $"FPS: {fps} [{fps_real}]");

// draw game crosshair
var _screen_x, _screen_y, _crosshair_disp;
_screen_x = display_get_gui_width() / 2;
_screen_y = display_get_gui_height() / 2;
_crosshair_disp = 2;

draw_sprite_ext(spr_crosshair, 0, _screen_x + _crosshair_disp, _screen_y + _crosshair_disp, 1, 1, 0, c_black, 0.5);
draw_sprite_ext(spr_crosshair, 0, _screen_x, _screen_y, 1, 1, 0, c_white, 1);

// draw other HUD stuff after rendering
draw_on_gui();

/*
// Bizarre Engine 2 ui
draw_set_halign(fa_left);
be_display_draw_data_ui(32, 32, , depth);
*/