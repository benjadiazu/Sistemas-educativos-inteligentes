/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite_ext(Ejercicio_ejemplo, 0, 100, 50, 0.5,0.5,0,c_white,1);
draw_set_font(fuente);

for (var i = 0; i < array_length_1d(alternativas); i++) {
    if (i == opcion_seleccionada) {
        draw_set_color(c_yellow); 
    } else {
        draw_set_color(c_white);  
    }
	
	pos_x = (i % 2 == 0) ? (100) : (100 + offset_x);
	
    pos_y = offset_y + (floor(i / 2) * 90);
	
    draw_text(pos_x, pos_y, alternativas[i]); // Dibujar cada alternativa
}
