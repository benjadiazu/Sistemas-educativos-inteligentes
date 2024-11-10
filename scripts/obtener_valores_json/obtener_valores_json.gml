function obtener_valores_json(_nombre_npc, _id_npc){
	pregunta = "";
	opcion1 = 0;
	opcion2 = 0;
	opcion3 = 0;
	opcion4 = 0;
	respuesta = 0;
	aux_map = undefined;
	
	if (global.map_preguntas != undefined){
		aux_map = global.map_preguntas; //copia de mapa de preguntas
		show_debug_message("auxMap asignado");
	}	
	
	//Obtener pregunta
	pregunta = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "pregunta"]; 
	//Obtener array de opciones
	opcion1 = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "opciones"][? "op1"];
	opcion2 = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "opciones"][? "op2"];
	opcion3 = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "opciones"][? "op3"];
	opcion4 = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "opciones"][? "op4"];
	//Obtener respuesta
	respuesta = aux_map[? _nombre_npc][? "questions"][? "id" + string(_id_npc)][? "respuesta_correcta"];

	
	//retornar un array con los datos de la pregunta
	return [pregunta,opcion1,opcion2,opcion3,opcion4,respuesta];
}