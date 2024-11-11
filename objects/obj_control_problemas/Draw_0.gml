// Configuración general de color y transparencia
draw_set_alpha(0.8);
draw_clear(c_orange);

// Función para centrar texto dentro de una caja y colorearla
function draw_centered_text_in_box(box_x, box_y, sprite_name, aux) {
	var box_width = 220;
	var box_height = 50;

    var text_width = string_width(sprite_name);
    var text_height = string_height(sprite_name);
	
	//Esto es para cambiar el color rojo si se está "parado" en la alternativa.
	if (aux == indice){
		draw_set_color(c_red);
	}
	else {
		draw_set_color(c_white);
	}

    // Dibujar caja
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

    // Dibujar texto centrado en la caja
    draw_set_color(c_black);
	show_debug_message("asdas");
	show_debug_message(sprite_name);
	
	draw_sprite(sprite_name,0,box_x+box_width/2 - 40,box_y+box_height/2 - 10);
    //draw_text(box_x + (box_width - text_width) / 2, box_y + (box_height - text_height) / 2, text);
}


switch (indice_pregunta) {
    case 0:
        alternativas = alternativas_pregunta_1;
        pregunta_actual = preguntas_npc[0];
        respuesta_actual = respuestas_correctas[0];
        break;
    case 1:
        alternativas = alternativas_pregunta_2;
        pregunta_actual = preguntas_npc[1];
        respuesta_actual = respuestas_correctas[1];
        break;
    case 2:
        alternativas = alternativas_pregunta_3;
        pregunta_actual = preguntas_npc[2];
        respuesta_actual = respuestas_correctas[2];
        break;
    case 3:
        alternativas = alternativas_pregunta_4;
        pregunta_actual = preguntas_npc[3];
        respuesta_actual = respuestas_correctas[3];
        break;
    case 4:
        alternativas = alternativas_pregunta_5;
        pregunta_actual = preguntas_npc[4];
        respuesta_actual = respuestas_correctas[4];
        break;
	case 5:
	    alternativas = alternativas_pregunta_6;
	    pregunta_actual = preguntas_npc[5];
	    respuesta_actual = respuestas_correctas[5];
	    break;
}

show_debug_message("asdasdsadas");
show_debug_message(pregunta_actual);
//dibujar pregunta
draw_sprite(pregunta_actual,0,(display_get_gui_width() / 2 - 500),(display_get_gui_height() / 2 - 450));

//draw_text(450, (display_get_gui_height() / 2 - 450), pregunta_actual + "");

//dibujar vidas
draw_text(50, 50, "Vidas: " + string(global.vidas));

//dibujar alternativas
for (var i = 0; i < 4; i++) {
    var a = (i % 2 == 0) ? 350 : 850;
    var b = (i < 2) ? 350 : 550;
    draw_centered_text_in_box(a, b, alternativas[i],i);
}

//Esto es para que se siga viendo la pregunta en pantalla
draw_set_alpha(1);
draw_set_color(c_white); 

/*
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
*/