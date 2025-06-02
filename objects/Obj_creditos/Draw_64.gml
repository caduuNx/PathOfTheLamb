

var y_pos = scroll_y;

draw_set_valign(fa_top);

for (var i = 0; i < array_length(creditos); i++) {
    var texto = creditos[i][0];
    var fonte = creditos[i][1];
    
    draw_set_font(fonte);
    draw_set_color(c_white);
    
    var base_x = display_get_width() * 0.5;
    var text_width = string_width(texto);
    var ajuste_offset = -100;  // Move 10 pixels para a esquerda
    
    var text_x = base_x - (text_width * 0.5) + ajuste_offset;
    
    draw_text(text_x, y_pos, texto);
    
    y_pos += linha_altura;
}
