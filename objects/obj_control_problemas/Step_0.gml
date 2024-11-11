
if (keyboard_check_pressed(vk_up)) {
    if (indice > 1) indice -= 2; // Mover arriba si está en la segunda fila
}
if (keyboard_check_pressed(vk_down)) {
    if (indice < 2) indice += 2; // Mover abajo si está en la primera fila
}
if (keyboard_check_pressed(vk_left)) {
    if (indice % 2 != 0) indice -= 1; // Mover a la izquierda si no está en la primera columna
}
if (keyboard_check_pressed(vk_right)) {
    if (indice % 2 == 0) indice += 1; // Mover a la derecha si está en la primera columna
}

if (keyboard_check_pressed(vk_space)) {
    // Verifica si la alternativa seleccionada es la correcta
    if (alternativas[indice] == respuesta_actual) {
        show_debug_message("¡Respuesta correcta!");
        
        // Pasa a la siguiente pregunta
        indice_pregunta++;
        
        if (indice_pregunta >= array_length(preguntas_npc)) {
            show_debug_message("¡Todas las preguntas respondidas!");
			global.nearbyNPC.estado = "derrotado";
			global.contador_enemigos_derrotados += 1;
            room_goto_previous();
        }

    } else {
        show_debug_message("Respuesta incorrecta.");
		//Descontar vidas
		global.vidas -= 1;
		if (global.vidas <= 0){
			global.vidas = 3;
			room_goto_previous()	
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