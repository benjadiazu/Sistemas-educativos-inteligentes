preguntas_npc = [];
respuestas_correctas = [];
indice_pregunta = 0;  // Índice para la pregunta actual
pregunta_actual = 0;
respuesta_actual = 0;
indice = 0;
mensaje_temporal = "";
tiempo_mensaje = 0;
color_mensaje = c_white;

// Llamar a la función para obtener las preguntas, alternativas y respuestas del NPC
respuestas = obtener_valores_json(global.nearbyNPC.dialogoNPC, global.nearbyNPC.idNPC, global.nearbyNPC.tipo_npc);

// Asignar preguntas y respuestas comunes
preguntas_npc[0] = respuestas[0];
preguntas_npc[1] = respuestas[1];
preguntas_npc[2] = respuestas[2];
respuestas_correctas[0] = respuestas[8];
respuestas_correctas[1] = respuestas[14];
respuestas_correctas[2] = respuestas[20];

// Almacenar las alternativas para cada pregunta
alternativas_pregunta_1 = [respuestas[4], respuestas[5], respuestas[6], respuestas[7]];
alternativas_pregunta_2 = [respuestas[10], respuestas[11], respuestas[12], respuestas[13]];
alternativas_pregunta_3 = [respuestas[16], respuestas[17], respuestas[18], respuestas[19]];

// Si el enemigo es un jefe, cargar preguntas adicionales
if (global.nearbyNPC.tipo_npc == "jefe") {
    preguntas_npc[3] = respuestas[21];
    preguntas_npc[4] = respuestas[28];
    respuestas_correctas[3] = respuestas[27];
    respuestas_correctas[4] = respuestas[34];
    
    alternativas_pregunta_4 = [respuestas[23], respuestas[24], respuestas[25], respuestas[26]];
    alternativas_pregunta_5 = [respuestas[30], respuestas[31], respuestas[32], respuestas[33]];
}