// Tocar som do botão
var efeito_id = audio_play_sound(sound_botao, 0, false);
audio_sound_gain(efeito_id, global.sfx_volume, 0);

// Aqui você continua com a ação do botão (ex: mudar sala, sair do jogo, etc.)


// Salva a room atual
global.room_voltar = room;

// Verifica se o objeto Obj_Player existe e tem instância
if (object_exists(Obj_Player)) {
    if (instance_exists(Obj_Player)) {
        global.player_x = Obj_Player.x;
        global.player_y = Obj_Player.y;
    }
}

// Vai para a room de configurações
transicao_simples(RoomConfigmenu);
