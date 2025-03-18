if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    audio_play_sound(snd_clicked, 1, false);
	sprite_index = spr_zuki_clicked;
	image_index = 0;
}

if (image_index >= image_number - 1 && sprite_index != spr_zuki_idle) {
   sprite_index = spr_zuki_idle;
}