var mx = mouse_x;
var my = mouse_y;

bg_x -= 1
bg_y -= 1

if (mouse_check_button_pressed(mb_left)) {

    if (point_in_rectangle(mx, my, apply_btn.x, apply_btn.y, apply_btn.x + apply_btn.w, apply_btn.y + apply_btn.h)) {
        apply_changes();
        exit;
    }

    if (point_in_rectangle(mx, my, exit_btn.x, exit_btn.y, exit_btn.x + exit_btn.w, exit_btn.y + exit_btn.h)) {
        instance_destroy();
        exit;
    }

    for (var i = 0; i < array_length(options); i++) {
        var yy = start_y + i * spacing;
        var opt = option[i];

        if (opt.type == "switch") {
            if (point_in_rectangle(mx, my, 260, yy, 260 + 32, yy + 32)) {
                opt.state = 1 - opt.state; // toggle
            }
        }

        if (opt.type == "dropdown") {
            if (point_in_rectangle(mx, my, 260, yy, 260 + box_w, yy + box_h)) {
                opt.open = !opt.open;
            } else if (opt.open) {
                for (var j = 0; j < array_length(opt.values); j++) {
                    var y2 = yy + box_h * (j + 1);
                    if (point_in_rectangle(mx, my, 260, y2, 260 + box_w, y2 + box_h)) {
                        opt.state = j;
                        opt.open = false;
                    }
                }
            }
        }

        option[i] = opt;
    }
}