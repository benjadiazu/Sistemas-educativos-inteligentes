/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_white);
draw_set_font(f_dialog);
draw_text(display_get_gui_width() - 1850, display_get_gui_height() - 1020, "Vidas: " + string(global.vidas)); 
draw_text(display_get_gui_width() - 680, display_get_gui_height() - 1020, "Enemigos derrotados: " + string(global.contador_enemigos_derrotados)); 
