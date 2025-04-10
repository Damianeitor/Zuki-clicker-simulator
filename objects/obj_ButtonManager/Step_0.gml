switch room
{
	case Main_menu:
	buttons = "main menu"
	break
	default:
	buttons = -4
}

switch buttons  
{
case "main menu":

if global.option_lenguage == "EN"
sprite_index = spr_button
else if global.option_lenguage == "ES"
sprite_index = spr_button_ES

if (click_timer < 0) {
    hover_index = -1;

    for (var i = 0; i < btn_count; i++) {
        var bx = btn_x;
        var by = btn_y + (i * btn_spacing);

        if (mouse_x > bx - sprite_width / 2.5 && mouse_x < bx + sprite_width / 2.5 &&
            mouse_y > by - sprite_height / 2.5 && mouse_y < by + sprite_height / 2.5) {
            hover_index = i;

            if (mouse_check_button_pressed(mb_left)) {
                clicked_button = i;
                click_timer = 90;
				audio_play_sound(snd_click, 1, false);
            }
        }
    }
} 
else {
    click_timer--;

    if (click_timer <= 0) {
        click_timer = -1;
        switch (clicked_button) {
            case 0: room_goto(Click_a_zuki); break;
            case 1: instance_create_layer(btn_x, btn_y, "Instances", obj_options); break;
            case 2: instance_create_layer(btn_x, btn_y, "Instances", obj_shop); break;
        }
    }
}
break
}