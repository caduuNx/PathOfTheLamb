muda_sprite(spr_end_move);

if (place_meeting(x, y, Obj_Player)) {
    // Para a música da fase
    audio_stop_sound(sound_musica_fase);

    // Ou, se você estiver usando o `musica_id`:
    // audio_stop_sound(musica_id);

    // Vai para a próxima room ou interface
	transicao_simples(RoomFase)
}
