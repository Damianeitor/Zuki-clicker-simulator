ini_open("saveData.ini")
global.option_lenguage = ini_read_real("Options", "lenguage", 1)
global.option_fs = ini_read_real("Options", "fullscreen", 0)
global.option_rs = ini_read_real("Options", "resolution", 1)
ini_close()
global.bigfont = font_add_sprite_ext(spr_font_0, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ!¡¿?.1234567890:ÁÄÃÀÂÉÈÊËÍÌÎÏÓÖÕÔÒÚÙÛÜÇ+", true, 0)


window_set_fullscreen(global.option_fs == 1);

var opt_r = global.option_rs;
var rX = (opt_r == 0 ? 480 : (opt_r == 1 ? 960 : 1920));
var rY = (opt_r == 0 ? 270 : (opt_r == 1 ? 540 : 1080));

window_set_size(rX, rY);

var screen_w = display_get_width();
var screen_h = display_get_height();
var win_w = window_get_width();
var win_h = window_get_height();

var win_x = (screen_w - win_w) div 2;
var win_y = (screen_h - win_h) div 2;

window_set_position(win_x, win_y);