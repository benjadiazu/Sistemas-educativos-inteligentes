//show_debug_message("entra fin de la room");

if (finished_process) {
	show_debug_message("entra al finished_process");
    // Generar el historial en formato de texto
    var output = "";
    for (var i = 0; i < array_length(global.respuestas_jugador); i++) {
        output += "[" + global.nombre_jugador + "] " + string(global.respuestas_jugador[i][0]) + " interacción_" + string(global.intentos_id+1) + " " + global.nearbyNPC.dialogoNPC +
                  string(global.respuestas_jugador[i][1]) + " " + global.respuestas_jugador[i][2] + "\n";
    }

    // Acumular el historial en la variable global
    global.intentos += output;
    global.intentos_id++;

    // Mostrar en el depurador
	show_debug_message("intentos:");
    show_debug_message(global.intentos);
	
	show_debug_message("respuestas_jugador (FIN DE LA HABITACION)");
    show_debug_message(global.respuestas_jugador);
}

// Restablecer índice de preguntas
indice_pregunta = 0;