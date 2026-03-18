function random_letter_choices() {
    var letters = [
        "Q","W","E","R","T","Y","U","I","O","P",
        "A","S","D","F","G","H","J","K","L",
        "Z","X","C","V","B","N","M"
    ];

    var i1 = irandom(array_length(letters) - 1);
    var first = letters[i1];
    array_delete(letters, i1, 1);

    var i2 = irandom(array_length(letters) - 1);
    var second = letters[i2];

    return [first, second];
}