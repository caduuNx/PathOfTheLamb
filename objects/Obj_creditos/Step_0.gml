scroll_y -= scroll_speed;

// Reinicia rolagem se quiser repetir
if (scroll_y < -array_length(creditos) * linha_altura) {
    scroll_y = display_get_height();
}
