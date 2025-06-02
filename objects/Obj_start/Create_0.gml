if (!instance_exists(Obj_Player)) {
    // 🔁 Resetar a vida ANTES de recriar o player
    global.vida_atual = global.vida_maxima;

    // Criar o player no ponto de início
    instance_create_layer(x, y, layer, Obj_Player);
}
