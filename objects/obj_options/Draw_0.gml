draw_sprite_tiled_ext(spr_options_bg_placeholder, 0, bg_x, bg_y, 1, 1, c_white, image_alpha) 

draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(-1);

for (var i = 0; i < array_length(option); i++) {
    var yy = start_y + i * spacing;
    var opt = option[i];

    draw_text(150, yy + box_h/2, opt.name_localized);

    if (opt.type == "dropdown") {
        draw_set_color(c_orange);
        draw_rectangle(260, yy, 260 + box_w, yy + box_h, false);
        draw_set_color(c_black);
        draw_text(260 + 5, yy + box_h/2, opt.values[opt.state]);

        if (opt.open) {
            for (var j = 0; j < array_length(opt.values); j++) {
                var y2 = yy + box_h * (j + 1);
                draw_set_color(c_orange);
                draw_rectangle(260, y2, 260 + box_w, y2 + box_h, false);
                draw_set_color(c_black);
                draw_text(260 + 5, y2 + box_h/2, opt.values[j]);
            }
        }
    }

    if (opt.type == "switch") {
        var spr_index = opt.state == 1 ? 1 : 0;
        draw_sprite(switch_sprite, spr_index, 260, yy);
    }
}

draw_set_color(c_red);
draw_rectangle(apply_btn.x, apply_btn.y, apply_btn.x + apply_btn.w, apply_btn.y + apply_btn.h, false);
draw_rectangle(exit_btn.x, exit_btn.y, exit_btn.x + exit_btn.w, exit_btn.y + exit_btn.h, false);

draw_set_color(c_white);
draw_text(apply_btn.x + 10, apply_btn.y + 15, "Apply");
draw_text(exit_btn.x + 10, exit_btn.y + 15, "Exit");