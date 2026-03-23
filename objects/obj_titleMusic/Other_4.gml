if (room == rm_titleScreen || room == rm_options) {
    if (!audio_is_playing(snd_titleMusic)) {
        audio_play_sound(snd_titleMusic, 0, true, 0.15);
    }
} else {
    audio_stop_sound(snd_titleMusic);
}