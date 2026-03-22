function load_high_scores_json() {
    if (file_exists("scores.json")) {
        var _file = file_text_open_read("scores.json")
        var _json = file_text_read_string(_file)
        file_text_close(_file)
        return json_parse(_json)
    } else {
        var _default = []
        for (var i = 0; i < 10; i++) {
            array_push(_default, {name: "---", score: 0})
        }
        return _default
    }
}

function save_high_score(_name, _score, _current_list) {
    var _list = _current_list
    
    array_push(_list, {name: _name, score: _score})
    array_sort(_list, function(_a, _b) { return _b.score - _a.score; })
    
    if (array_length(_list) > 10) array_delete(_list, 10, 1)
    
    var _file = file_text_open_write("scores.json")
    file_text_write_string(_file, json_stringify(_list))
    file_text_close(_file)
    
    return _list
}

function draw_leaderboard_ext(_x, _y, _spacing, _width, _list) {
    var _rankX  = _x - _width
    var _scoreX = _x
    var _nameX  = _x + _width

    draw_set_halign(fa_center)
    draw_set_color(c_yellow)
    draw_text(_rankX, _y - 40, "RANK")
    draw_text(_scoreX, _y - 40, "SCORE")
    draw_text(_nameX, _y - 40, "OPERATOR")
    
    draw_set_color(c_white)
    for (var i = 0; i < array_length(_list); i++) {
        var _yy = _y + (i * _spacing)
        var _suffix = (i == 0) ? "st" : ((i == 1) ? "nd" : ((i == 2) ? "rd" : "th"))
        
        draw_text(_rankX, _yy, string(i + 1) + _suffix)
        draw_text(_scoreX, _yy, string(_list[i].score))
        draw_text(_nameX, _yy, string_upper(_list[i].name))
    }
}

function reset_leaderboard() {
    if (file_exists("scores.json")) {
        file_delete("scores.json");
    }
    
    var _default = [];
    for (var i = 0; i < 10; i++) {
        array_push(_default, {name: "---", score: 0});
    }
    
    high_scores = _default;
}