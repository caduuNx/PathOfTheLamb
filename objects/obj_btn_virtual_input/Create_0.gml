// Posição e tamanho dos botões virtuais
btn_left_x = 50;
btn_left_y = display_get_gui_height() - 150;
btn_size = 100;

btn_right_x = btn_left_x + btn_size + 30;
btn_right_y = btn_left_y;

btn_jump_x = display_get_gui_width() - btn_size - 50;
btn_jump_y = btn_left_y;

// Estados dos botões
btn_left = false;
btn_right = false;
btn_jump = false;
btn_jump_pressed = false;