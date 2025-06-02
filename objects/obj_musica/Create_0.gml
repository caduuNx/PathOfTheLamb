// Começa tocando música "fase"
musica_atual = "fase";
musica_id = audio_play_sound(sound_musica_fase, 1, true);
audio_sound_gain(musica_id, global.music_volume, 0);
