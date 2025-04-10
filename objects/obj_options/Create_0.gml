option = [
    {
        name: "language",
        name_localized: "Language",
        type: "dropdown",
        values: ["Spanish", "English"],
        state: 0,
        open: false
    },
    {
        name: "fullscreen",
        name_localized: "Fullscreen",
        type: "switch",
        values: [0, 1],
        state: 0
    },
    {
        name: "resolution",
        name_localized: "Resolution",
        type: "dropdown",
        values: ["480 x 270", "960 x 540", "1920 x 1080"],
        state: 0,
        open: false
    }
];

spacing = 48;
start_y = 100;
box_w = 120;
box_h = 30;
hover = -1;

apply_btn = { x: 300, y: 300, w: 100, h: 30 };
exit_btn = { x: 420, y: 300, w: 100, h: 30 };

bg_x = 0
bg_y = 0

depth = -13 //entre mas me la mamas mas me crece

switch_sprite = spr_switch; // tu GIF importado