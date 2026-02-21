//Spawn somewhere near the top
x = irandom_range(32, room_width - 32);
y = -32;

//Typing progress starts at 0
progress = 0;

base_speed = 1.5;
damageDone = 1;

//this should load a json file, we can change file name as needed. 
if (!variable_global_exists("word_list")) {
    global.word_list = [];

    var json_text = string_load("words.json");
    var data = json_parse(json_text);          // expects a struct

    // expects data.words to be an array
    global.word_list = data.words;
}
