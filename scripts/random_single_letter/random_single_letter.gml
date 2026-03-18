function random_single_letter() {
    var letters = [
        "Q","W","E","R","T","Y","U","I","O","P",
        "A","S","D","F","G","H","J","K","L",
        "Z","X","C","V","B","N","M"
    ];

    return letters[irandom(array_length(letters) - 1)];
}