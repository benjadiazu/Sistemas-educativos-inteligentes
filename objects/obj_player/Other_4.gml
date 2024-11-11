/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*
if (global.vidas == 0){
	if (global.currentDialogue != undefined) {
	    // Si hay un diálogo en curso
	
		if (global.currentMessageIndex < array_length_1d(global.currentDialogue)){
		    var currentMessage = global.currentDialogue[global.currentMessageIndex];
			show_debug_message(currentMessage);
	
		    // Mostrar el texto actual
		    draw_sprite(msg_box, 0, 500, (display_get_gui_height()/2)+100);
		    draw_set_font(f_dialog);
		    draw_set_halign(fa_left);	
		    draw_set_valign(fa_top);
			draw_text(545, 655, string("Aviso"));
	    
		    // Control de avance del texto
		    if (ctr <= string_length(currentMessage)) {
		        ctr += 1;
		        if (string_copy(currentMessage, ctr, 1) != " " && !audio_is_playing(voice_typewritter)) {
		            audio_play_sound(voice_typewritter, 0, 0, 1.0, undefined, 1.0);
		        }
		    } else {
				readyForNextMessage = true;	
			}

			draw_text_ext(555, (display_get_gui_height() / 2 + 200), string_copy(currentMessage, 1, ctr), -1, box);
				
		
		    // Avanzar al siguiente mensaje cuando se presiona espacio
		    if (readyForNextMessage && keyboard_check_pressed(vk_space)) {
		        global.currentMessageIndex += 1;
			
				if (global.nearbyNPC.tipo_npc == "jefe"){
					if (global.room_actual == rm_gameMain){
						if (global.contador_enemigos_derrotados < 3){
							global.playerControl = true;
							instance_destroy();	
						}	
					}
					else{
						if (global.contador_enemigos_derrotados < 4){
							global.playerControl = true;
							instance_destroy();	
						}	
					}
				}
			
		        if (global.currentMessageIndex >= array_length_1d(global.currentDialogue)) {
					// Si ya no hay más mensajes, destruir la instancia de conversación
		            instance_destroy();
		            global.playerControl = true; // Permitir movimiento del jugador nuevamente
					global.currentDialogue = undefined;
				
					//Si es enemigo o boss, se abren sus preguntas.
					if ((global.nearbyNPC.tipo_npc == "enemigo" || global.nearbyNPC.tipo_npc == "jefe") && global.nearbyNPC.estado != "derrotado"){
						//show_debug_message("nombre npc en conversation:")
						//show_debug_message(global.nearbyNPC.dialogoNPC);
						//show_debug_message("id npc en conversation:")
						//show_debug_message(global.nearbyNPC.idNPC);
						//show_debug_message(global.nearbyNPC);
						global.room_anterior = room;
						room_goto(rm_problema);
					}
		        }
				else {
					ctr = 0;
					readyForNextMessage = false;	
				}
		    }
		}
	} else {
	    // No hay diálogo activo, destruir la instancia de conversación
	    instance_destroy();
	}
}
*/