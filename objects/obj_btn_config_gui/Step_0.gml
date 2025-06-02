// Detecta toque na posição correta do botão no canto superior direito
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Atualiza a posição do botão (GUI)
bx = display_get_gui_width() - sprite_get_width(Bot_o_Engrenagem___Configura__es) - 30;
by = 30;
bw = sprite_get_width(Bot_o_Engrenagem___Configura__es);
bh = sprite_get_height(Bot_o_Engrenagem___Configura__es);

// Detecta clique/toque
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, bx, by, bx + bw, by + bh)) {
        var efeito_id = audio_play_sound(sound_botao, 0, false);
        audio_sound_gain(efeito_id, global.sfx_volume, 0);

        global.room_voltar = room;
        if (instance_exists(Obj_Player)) {
            global.player_x = Obj_Player.x;
            global.player_y = Obj_Player.y;
        }

        transicao_simples(RoomConfigmenu);
    }
}
