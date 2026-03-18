function xp_level_limit(cl) {
    if (cl <= 4) return 400 * cl;
    if (cl <= 8) return 1600 + (cl - 4) * 600;
    return (400 * cl + 100 * sqr(cl - 4)) - 1000;
}