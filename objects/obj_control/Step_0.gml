if (room == "rm_nivel3" and obj_npc_enemigo_jefe3.estado == "derrotado"){
	// Exportar las respuestas del jugador
    if(global.intentos != undefined && global.intentos != noone) {
        scr_exportar("respuestas_" + global.nombre_jugador, global.intentos);
    }
    
    global.juego_terminado = true;
   
    show_message("Juego Terminado\nGracias por jugar");
    
    room_goto(rm_mainTitle);
}
