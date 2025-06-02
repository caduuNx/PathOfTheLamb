// Define quais rooms tocam a música da interface
var rooms_interface = ["RoomConfig", "RoomCreditos", "RoomFase", "RoomStart"];
// Define quais rooms tocam a música da fase
var rooms_fase = ["Room1", "RoomConfigmenu"];

// Função pra checar se a room atual está na lista
function room_in_list(room_name, lista) {
    for (var i = 0; i < array_length(lista); i++) {
        if (room_name == lista[i]) {
            return true;
        }
    }
    return false;
}

var musica_desejada;

if (room_in_list(room_get_name(room), rooms_interface)) {
    musica_desejada = "interface";
} else if (room_in_list(room_get_name(room), rooms_fase)) {
    musica_desejada = "fase";
} else {
    // Se quiser, pode definir um padrão aqui
    musica_desejada = "fase";
}

// Troca a música só se for diferente da que já está tocando
if (musica_desejada != musica_atual) {
    // Para música antiga
    audio_stop_sound(musica_id);

    // Toca nova música
    if (musica_desejada == "interface") {
        musica_id = audio_play_sound(sound_musica_interface, 1, true);
    } else {
        musica_id = audio_play_sound(sound_musica_fase, 1, true);
    }
    audio_sound_gain(musica_id, global.music_volume, 0);
    musica_atual = musica_desejada;
} else {
    // Mantém volume atualizado
    audio_sound_gain(musica_id, global.music_volume, 0);
}
