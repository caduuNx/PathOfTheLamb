// Verifica se a vida global existe antes de desenhar a barra
if (variable_global_exists("vida_maxima") && variable_global_exists("vida_atual")) {

    // Coordenadas de início (canto superior esquerdo)
    var x_inicial = 20;
    var y_inicial = 20;

    // Espaçamento entre corações
    var espacamento = 48;

    // Desenha os corações com base na vida global
    for (var i = 0; i < global.vida_maxima; i++) {
        var x_vida = x_inicial + i * espacamento;
        var y_vida = y_inicial;

        if (i < global.vida_atual) {
            draw_sprite(spr_coracao_cheio, 0, x_vida, y_vida);
        } else {
            draw_sprite(spr_coracao_vazio, 0, x_vida, y_vida);
        }
    }
}
