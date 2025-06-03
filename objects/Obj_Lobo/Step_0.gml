// Pausa antes de inverter direção
if (esperar > 0) {
    esperar--;
    exit;
}

// Movimento
x += velocidade * direcao;

// Inverter direção ao alcançar limites
if (x < x_inicial) {
    x = x_inicial;
    direcao = 1;
    esperar = 15;
}
else if (x > x_final) {
    x = x_final;
    direcao = -1;
    esperar = 15;
}

// Espelhamento do sprite
image_xscale = direcao;

// Colisão com o player
if (place_meeting(x, y, Obj_Player)) {
    var p = instance_place(x, y, Obj_Player);
    if (p != noone) {
        // Empurra o jogador
        p.x += direcao * empurrao;

        // Aplica dano se não estiver invulnerável
        if (!p.invulneravel) {
            global.vida_atual -= dano;
            p.invulneravel = true;
            p.tempo_invulneravel = 60;

            var efeito_id = audio_play_sound(sound_hit, 0, false);
            audio_sound_gain(efeito_id, global.sfx_volume, 0);
        }
    }
}
