function random_three_letters() {
    var letters = [
        "Q","W","E","R","T","Y","U","I","O","P",
        "A","S","D","F","G","H","J","K","L",
        "Z","X","C","V","B","N","M"
    ];

    var out = [];

    repeat (3) {
        var i = irandom(array_length(letters) - 1);
        array_push(out, letters[i]);
        array_delete(letters, i, 1);
    }

    return out;
}