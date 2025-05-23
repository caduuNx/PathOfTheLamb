
if (move_checkpoint == false) {
    velv = 0;
    velh = 0;

    muda_sprite(spr_player_die);
    move_checkpoint = true;
}


if (!invulneravel) {
    global.vida_atual -= 1;
    vida_atual = global.vida_atual;

    if (global.vida_atual > 0) {
        // Leva dano, mas ainda tem vida: só fica invulnerável
        invulneravel = true;
        tempo_invulneravel = 30;
        exit;
    }

    // Se chegou a 0, então sim: morreu
    global.vida_atual = global.vida_maxima;

    // Respawn
    if (instance_exists(Obj_start)) {
        var start = instance_find(Obj_start, 0);
        instance_create_layer(start.x, start.y, start.layer, Obj_Player);
    } else {
        room_restart();
    }

    instance_destroy();
}



 



