// Resetar estados
btn_left = false;
btn_right = false;
btn_jump = false;
btn_jump_pressed = false;

// Aumentar a hitbox dos botões
var extra = 20; // pixels extras em cada lado da hitbox

for (var i = 0; i < 10; i++) {
    if (device_mouse_check_button(i, mb_left)) {
        var mx = device_mouse_x_to_gui(i);
        var my = device_mouse_y_to_gui(i);

        // Botão esquerda
        if (point_in_rectangle(mx, my, btn_left_x - extra, btn_left_y - extra, btn_left_x + btn_size + extra, btn_left_y + btn_size + extra)) {
            btn_left = true;
        }

        // Botão direita
        if (point_in_rectangle(mx, my, btn_right_x - extra, btn_right_y - extra, btn_right_x + btn_size + extra, btn_right_y + btn_size + extra)) {
            btn_right = true;
        }

        // Botão pular (pressionado contínuo)
        if (point_in_rectangle(mx, my, btn_jump_x - extra, btn_jump_y - extra, btn_jump_x + btn_size + extra, btn_jump_y + btn_size + extra)) {
            btn_jump = true;
        }
    }

    // Verifica pressionado novo para pulo (tipo "check_pressed")
    if (device_mouse_check_button_pressed(i, mb_left)) {
        var mx = device_mouse_x_to_gui(i);
        var my = device_mouse_y_to_gui(i);

        if (point_in_rectangle(mx, my, btn_jump_x - extra, btn_jump_y - extra, btn_jump_x + btn_size + extra, btn_jump_y + btn_size + extra)) {
            btn_jump_pressed = true;
        }
    }
}
