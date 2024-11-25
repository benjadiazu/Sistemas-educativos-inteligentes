
obj_panel_status.question_status[numero_de_intento_jugador] = 2;

global.respuestas_jugador[numero_de_intento_jugador] = ["vidas: " + string(global.vidas) , " " + "pregunta_" + string(indice_pregunta+1), "respuesta_correcta"];
show_debug_message("global.respuestas_jugador (CORRECTO): ");
show_debug_message(global.respuestas_jugador);
// Avanzar a la siguiente pregunta
indice_pregunta++;
good_questions++; // Incrementar preguntas correctas
numero_de_intento_jugador++;

// Revisar si se completaron todas las preguntas
if (indice_pregunta >= array_length(preguntas_npc)) {
    show_debug_message("¡Todas las preguntas respondidas!");
	if (global.nearbyNPC.tipo_npc == "jefe"){
		global.contador_bosses++;
	}
    global.nearbyNPC.estado = "derrotado";
    global.contador_enemigos_derrotados++;
    global.npc_estados[? global.nearbyNPC.id] = "derrotado";
	finished_process = true;
    room_goto(global.room_anterior); 
	
	//instance_destroy(); 
} else {
    alarm[2] = 1;
}