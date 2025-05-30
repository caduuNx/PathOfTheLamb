// Ajuste do volume da música
if (mouse_check_button(mb_left)) {
    if (mouse_x > slider_mus_x && mouse_x < slider_mus_x + slider_w &&
        mouse_y > slider_mus_y && mouse_y < slider_mus_y + slider_h) {
        global.music_volume = (mouse_x - slider_mus_x) / slider_w;
    }

    // Ajuste do volume do efeito
    if (mouse_x > slider_sfx_x && mouse_x < slider_sfx_x + slider_w &&
        mouse_y > slider_sfx_y && mouse_y < slider_sfx_y + slider_h) {
        global.sfx_volume = (mouse_x - slider_sfx_x) / slider_w;
    }
}

// Garante que fique entre 0 e 1
global.music_volume = clamp(global.music_volume, 0, 1);
global.sfx_volume = clamp(global.sfx_volume, 0, 1);
