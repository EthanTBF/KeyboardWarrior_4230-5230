function key_in_array(_key, _arr) {
    for (var i = 0; i < array_length(_arr); i++) {
        if (_arr[i] == _key) return true;
    }
    return false;
}