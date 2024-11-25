// Dibujar el borde negro (rectángulo más grande)
draw_set_color(c_white);
draw_rectangle(450, 690, 1800, 740, false);

// Dibujar el fondo blanco (rectángulo más pequeño)
draw_set_color(c_black);
draw_rectangle(452, 692, 1798, 738, false);

draw_set_font(f_dialog);

draw_set_color(c_white);
//draw_text(750,550,"Bienvenido al juego!");
draw_text(550,650,"Introduzca su nombre (Obligatorio)");

draw_text(display_get_gui_width() / 2 - 400,900,"Precione ENTER para empezar");

if(keyboard_check_pressed(vk_insert)) {
      type = !type;
      keyboard_string = global.nombre_jugador;
}
if(type) global.nombre_jugador = keyboard_string;
var t_ = global.nombre_jugador;
if(t_ == "") t_ = "Player";
draw_text(500,700, t_);

//show_debug_message("Nombre guardado: "+ global.nombre_jugador);