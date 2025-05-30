draw_text(100, 50, "Configuração de Áudio");

// Música
draw_text(slider_mus_x, slider_mus_y - 20, "Volume da Música");
draw_rectangle(slider_mus_x, slider_mus_y, slider_mus_x + slider_w, slider_mus_y + slider_h, false);
draw_rectangle(slider_mus_x, slider_mus_y, slider_mus_x + global.music_volume * slider_w, slider_mus_y + slider_h, true);

// Efeitos
draw_text(slider_sfx_x, slider_sfx_y - 20, "Volume dos Efeitos");
draw_rectangle(slider_sfx_x, slider_sfx_y, slider_sfx_x + slider_w, slider_sfx_y + slider_h, false);
draw_rectangle(slider_sfx_x, slider_sfx_y, slider_sfx_x + global.sfx_volume * slider_w, slider_sfx_y + slider_h, true);
