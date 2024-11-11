/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (tiempo_mensaje > 0) {
	draw_set_color(color_mensaje);
	if (color_mensaje == c_green){
		draw_text(670, display_get_gui_height() / 2 - 150, mensaje_temporal);
		tiempo_mensaje -= 1;
	}
	else{
		draw_text(450, display_get_gui_height() / 2 - 150, mensaje_temporal);
		tiempo_mensaje -= 1;
	}
}