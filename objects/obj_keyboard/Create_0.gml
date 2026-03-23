max_hp = 100;
hp = max_hp;
global.explosive_letters = [];

// how long a key stays visually pressed
press_time_default = 4;

// stores remaining pressed time for each key
key_timers = ds_map_create();

// basic layout data
// each entry: [label, x, y, w, h]
// x/y are local to obj_keyboard

keys = [
    // top row
    ["Q", 74, 28, 9, 11],
    ["W", 88, 28, 9, 11],
    ["E", 102, 28, 9, 11],
    ["R", 116, 28, 9, 11],
    ["T", 130, 28, 9, 11],
    ["Y", 144, 28, 9, 11],
    ["U", 158, 28, 9, 11],
    ["I", 172, 28, 9, 11],
    ["O", 186, 28, 9, 11],
    ["P", 200, 28, 9, 11],

    // home row
    ["A", 75, 44, 9, 11],
    ["S", 89, 44, 9, 11],
    ["D", 103, 44, 9, 11],
    ["F", 117, 44, 9, 11],
    ["G", 131, 44, 9, 11],
    ["H", 145, 44, 9, 11],
    ["J", 159, 44, 9, 11],
    ["K", 173, 44, 9, 11],
    ["L", 187, 44, 9, 11],

    // bottom row
    ["Z", 79, 60, 9, 11],
    ["X", 93, 60, 9, 11],
    ["C", 108, 60, 9, 11],
    ["V", 122, 60, 9, 11],
    ["B", 136, 60, 9, 11],
    ["N", 150, 60, 9, 11],
    ["M", 164, 60, 9, 11],

    ["SPACE", 96, 77, 74, 11]
];

// initialize all keys to not pressed
for (var i = 0; i < array_length(keys); i++) {
    var label = keys[i][0];
    ds_map_add(key_timers, label, 0);
}