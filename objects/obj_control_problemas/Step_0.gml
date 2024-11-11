
if (keyboard_check_pressed(vk_up)) {
    if (indice > 1) indice -= 2; // Mover arriba si está en la segunda fila
	audio_play_sound(click, 0, 0, 1.0, undefined, 1.0);
}
if (keyboard_check_pressed(vk_down)) {
    if (indice < 2) indice += 2; // Mover abajo si está en la primera fila
	audio_play_sound(click, 0, 0, 1.0, undefined, 1.0);
}
if (keyboard_check_pressed(vk_left)) {
    if (indice % 2 != 0) indice -= 1; // Mover a la izquierda si no está en la primera columna
	audio_play_sound(click, 0, 0, 1.0, undefined, 1.0);
}
if (keyboard_check_pressed(vk_right)) {
    if (indice % 2 == 0) indice += 1; // Mover a la derecha si está en la primera columna
	audio_play_sound(click, 0, 0, 1.0, undefined, 1.0);
}

if (keyboard_check_pressed(vk_space)) {
    // Verifica si la alternativa seleccionada es la correcta
    if (alternativas[indice] == respuesta_actual) {
        show_debug_message("¡Respuesta correcta!");
		audio_play_sound(correct, 0, 0, 1.0, undefined, 1.0);
        mensaje_temporal = "¡Respuesta correcta!";
        color_mensaje = c_green;  // Color verde para respuesta correcta
        tiempo_mensaje = 120; // Mostrar mensaje durante 120 frames
		
        // Pasa a la siguiente pregunta
        indice_pregunta++;
        
        if (indice_pregunta >= array_length(preguntas_npc)) {
            show_debug_message("¡Todas las preguntas respondidas!");
			global.nearbyNPC.estado = "derrotado";
			global.contador_enemigos_derrotados += 1;
            room_goto(global.room_anterior);
        }

    } else {
        show_debug_message("Respuesta incorrecta.");
		audio_play_sound(incorrect, 0, 0, 1.0, undefined, 1.0);
		mensaje_temporal = "Respuesta incorrecta, intentalo de nuevo.";
		color_mensaje = c_red;
		tiempo_mensaje = 120;
		
		
		//Descontar vidas
		global.vidas -= 1;
		if (global.vidas <= 0){
			global.vidas = 3;
			room_goto(global.room_anterior);
		}
    }
    // Restablece el índice de la alternativa seleccionada a 0 para la siguiente pregunta
    indice = 0;
}

// Confirmar la selección con la tecla ENTER
/*
if (keyboard_check_pressed(vk_enter)) {
    var seleccion = alternativas[opcion_seleccionada];
    
    //show_message("Has seleccionado: " + seleccion);
    
    if (seleccion == "70") {
         show_message("¡Correcto!");
    } else {
         show_message("Incorrecto. Inténtalo de nuevo.");
    }
	room_goto_previous()
	global.playerControl = true;
}
*/