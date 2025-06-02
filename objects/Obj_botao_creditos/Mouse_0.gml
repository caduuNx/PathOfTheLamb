// Tocar som do botão
var efeito_id = audio_play_sound(sound_botao, 0, false);
audio_sound_gain(efeito_id, global.sfx_volume, 0);

// Aqui você continua com a ação do botão (ex: mudar sala, sair do jogo, etc.)


transicao_simples(RoomCreditos);