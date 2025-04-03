scale_x = lerp(scale_x, 1, 0.2);
scale_y = lerp(scale_y, 1, 0.2);

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    audio_play_sound(snd_clicked, 1, false);
	scale_x = 1.3; 
    scale_y = 0.7;
}
