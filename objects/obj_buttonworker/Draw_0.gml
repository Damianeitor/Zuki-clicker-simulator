if buttons == "main menu"
{
for (var i = 0; i < btn_count; i++) {
    var bx = btn_x;
    var by = btn_y + (i * btn_spacing);
    
    var img_index = i * 2;

    if (hover_index == i) {
        img_index = (i * 2) + 1;
    }

    if (clicked_button == i && click_timer > 0) {
        img_index = (i * 2) + ((click_timer div 3) mod 2);
    }

    draw_sprite(sprite_index, img_index, bx, by);
}
}