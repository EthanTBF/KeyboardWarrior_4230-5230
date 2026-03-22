function roll_upgrade_choices() {
    var pool = [
        "ice_keycaps",
        "explosive_key",
        "dance_key",
        "exKeyrience",
        "key2defense"
    ];

    var a = irandom(array_length(pool) - 1);
    var first = pool[a];
    array_delete(pool, a, 1);

    var b = irandom(array_length(pool) - 1);
    var second = pool[b];

    return [first, second];
}