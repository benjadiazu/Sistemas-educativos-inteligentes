function obtener_valores_json(_nombre_npc, _id_npc){
	pregunta = "";
	opciones = [];
	respuesta = 0;
	aux_map = ds_map_create();
	
	if (global.map_preguntas != undefined){
		aux_map = global.map_preguntas; //copia de mapa de preguntas
		show_debug_message("auxMap asignado");
	}
	
	show_debug_message(_nombre_npc);
	show_debug_message(_id_npc);
	
	show_debug_message(aux_map[? _nombre_npc][? "questions"][_id_npc]);
	
	show_debug_message(typeof(aux_map));
	
	//Obtener pregunta
	pregunta = aux_map[? _nombre_npc][? "questions"][_id_npc][? "pregunta"]; 
	//Obtener array de opciones
	opciones = aux_map[? _nombre_npc][? "questions"][_id_npc][? "opciones"];
	//Obtener respuesta
	respuesta = aux_map[? _nombre_npc][? "questions"][_id_npc][? "respuesta_correcta"];
	
	//retornar un array con los datos de la pregunta
	return [pregunta,opciones,respuesta];
}