var window_width = 400;
var window_height = 200;
var x_pos = (display_get_width() - window_width) / 2;
var y_pos = (display_get_height() - window_height) / 2;

    
draw_set_color(c_black);
draw_rectangle(x_pos, y_pos, x_pos + window_width, y_pos + window_height, false);

    
draw_set_color(c_white);
draw_text(x_pos + window_width / 2 - string_width("Juego Terminado.\n¡Gracias por jugar!") / 2, 
            y_pos + window_height / 2 - string_height("Juego Terminado.\n¡Gracias por jugar!") / 2, 
            "Juego Terminado.\n¡Gracias por jugar!");
