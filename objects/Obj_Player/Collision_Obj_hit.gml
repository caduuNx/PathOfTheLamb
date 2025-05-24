if (!invulneravel) {
    global.vida_atual -= 1;
    vida_atual = global.vida_atual;

    // EMPURRÃO MAIS FORTE
    if (image_xscale > 0) {
        velh = -6; // empurra para a esquerda
    } else {
        velh = 6;  // empurra para a direita
    }
    velv = -4; // empurra para cima

    if (global.vida_atual > 0) {
        // Leva dano, mas ainda tem vida: só fica invulnerável
        invulneravel = true;
        tempo_invulneravel = 30;
        exit;
    }

    // Morte: reinicia a vida e cria o jogador no ponto inicial
    global.vida_atual = global.vida_maxima;

    if (instance_exists(Obj_start)) {
        var start = instance_find(Obj_start, 0);
        instance_create_layer(start.x, start.y, start.layer, Obj_Player);
    } else {
        room_restart();
    }

    instance_destroy();
}
