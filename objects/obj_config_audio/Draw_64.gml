// Cores dos sliders
var border_color = make_color_rgb(100, 0, 50);  // Borda escura
var fill_color = make_color_rgb(200, 50, 100);  // Preenchimento visível

// Volume dos Efeitos
draw_set_color(border_color);
draw_rectangle(slider_sfx_x, slider_sfx_y, slider_sfx_x + slider_w, slider_sfx_y + slider_h, false);
draw_set_color(fill_color);
draw_rectangle(slider_sfx_x, slider_sfx_y, slider_sfx_x + global.sfx_volume * slider_w, slider_sfx_y + slider_h, true);

// Volume da Música
draw_set_color(border_color);
draw_rectangle(slider_mus_x, slider_mus_y, slider_mus_x + slider_w, slider_mus_y + slider_h, false);
draw_set_color(fill_color);
draw_rectangle(slider_mus_x, slider_mus_y, slider_mus_x + global.music_volume * slider_w, slider_mus_y + slider_h, true);

// Resetar cor
draw_set_color(c_white);
