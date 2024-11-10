function obtener_valores_json(_nombre_npc, _id_npc){
	pregunta_1 = "";
	pregunta_2 = "";
	pregunta_3 = "";
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

	show_debug_message(_nombre_npc);
	show_debug_message(_id_npc);
	
	//Pregunta 1
	
	pregunta_1 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id1"][? "pregunta"];
	id_pregunta_1 = "id" + string(1);
	
	opcion1_1 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(1)][? "opciones"][? "op1"];
	opcion1_2 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(1)][? "opciones"][? "op2"];
	opcion1_3 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(1)][? "opciones"][? "op3"];
	opcion1_4 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(1)][? "opciones"][? "op4"];
	
	respuesta_1 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(1)][? "respuesta_correcta"];
	
	//Pregunta 2
	
	pregunta_2 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "pregunta"];
	id_pregunta_2 = "id" + string(2);
	
	opcion2_1 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "opciones"][? "op1"];
	opcion2_2 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "opciones"][? "op2"];
	opcion2_3 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "opciones"][? "op3"];
	opcion2_4 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "opciones"][? "op4"];
	
	respuesta_2 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(2)][? "respuesta_correcta"];
	
	//Pregunta 3
	
	pregunta_3 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "pregunta"];
	id_pregunta_3 = "id" + string(3);
	
	opcion3_1 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "opciones"][? "op1"];
	opcion3_2 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "opciones"][? "op2"];
	opcion3_3 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "opciones"][? "op3"];
	opcion3_4 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "opciones"][? "op4"];
	
	respuesta_3 = aux_map[? _nombre_npc][? "id_npc" + string(_id_npc)][? "questions"][? "id" + string(3)][? "respuesta_correcta"];

	//retornar un array
	return [pregunta_1,pregunta_2,pregunta_3,id_pregunta_1,opcion1_1,opcion1_2,opcion1_3,opcion1_4,respuesta_1,
			id_pregunta_2,opcion2_1,opcion2_2,opcion2_3,opcion2_4,respuesta_2,id_pregunta_3,opcion3_1,opcion3_2,opcion3_3,opcion3_4,respuesta_3];
}
