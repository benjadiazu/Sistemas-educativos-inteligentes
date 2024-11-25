//show_debug_message("====ALARMA 1=====");

obj_panel_status.question_status[numero_de_intento_jugador] = 1;

// Registrar en el historial
global.respuestas_jugador[numero_de_intento_jugador] = ["vidas: " + string(global.vidas-1) , " " + "pregunta_" + string(indice_pregunta+1), "respuesta_incorrecta"];
show_debug_message("global.respuestas_jugador (INCORRECTO)");
show_debug_message(global.respuestas_jugador);

numero_de_intento_jugador++;
bad_questions++; // Incrementar preguntas incorrectas

alarm[2] = 1;

//Descontar vidas
		
global.vidas -= 1;
if (global.vidas <= 0){
	finished_process = true;
	room_goto(global.room_anterior);
	//instance_destroy();
}
