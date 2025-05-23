if (!instance_exists(Obj_Player) && global.vida_atual <= 0) {
    global.vida_atual = global.vida_maxima; // Resetar vida
    instance_create_layer(x, y, layer, Obj_Player);
}


