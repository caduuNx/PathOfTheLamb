show_debug_message("Clique detectado");

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
room_goto(RoomConfigmenu);
