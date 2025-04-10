function apply_changes() {
    for (var i = 0; i < array_length(options); i++) {
        var opt = options[i];

        switch (opt.name) {
            case "language":
                // cambiar idioma global
                global.language = opt.values[opt.state];
                break;

            case "fullscreen":
                window_set_fullscreen(opt.state == 1);
                break;

            case "resolution":
                var val = opt.values[opt.state];
                var parts = string_split(val, " x ");
                var w = real(parts[0]);
                var h = real(parts[1]);

                window_set_size(w, h);
                window_set_position((display_get_width() - w) div 2, (display_get_height() - h) div 2);
                break;
        }
    }
}