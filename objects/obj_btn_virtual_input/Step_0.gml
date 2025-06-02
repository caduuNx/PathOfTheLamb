// Resetar estados
btn_left = false;
btn_right = false;
btn_jump = false;
btn_jump_pressed = false;

for (var i = 0; i < 10; i++) {
    if (device_mouse_check_button(i, mb_left)) {
        var mx = device_mouse_x_to_gui(i);
        var my = device_mouse_y_to_gui(i);

        if (point_in_rectangle(mx, my, btn_left_x, btn_left_y, btn_left_x + btn_size, btn_left_y + btn_size)) {
            btn_left = true;
        }
        if (point_in_rectangle(mx, my, btn_right_x, btn_right_y, btn_right_x + btn_size, btn_right_y + btn_size)) {
            btn_right = true;
        }
        if (point_in_rectangle(mx, my, btn_jump_x, btn_jump_y, btn_jump_x + btn_size, btn_jump_y + btn_size)) {
            btn_jump = true;
        }
    }

    if (device_mouse_check_button_pressed(i, mb_left)) {
        var mx = device_mouse_x_to_gui(i);
        var my = device_mouse_y_to_gui(i);

        if (point_in_rectangle(mx, my, btn_jump_x, btn_jump_y, btn_jump_x + btn_size, btn_jump_y + btn_size)) {
            btn_jump_pressed = true;
        }
    }
}

