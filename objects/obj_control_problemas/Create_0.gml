
alternativas = [];
respuestas = obtener_valores_json(global.nearbyNPC.dialogoNPC, global.nearbyNPC.idNPC);
show_debug_message(respuestas);
pregunta = respuestas[0];
alternativas[0] = respuestas[1];
alternativas[1] = respuestas[2];
alternativas[2] = respuestas[3];
alternativas[3] = respuestas[4];
respuesta = respuestas[5];