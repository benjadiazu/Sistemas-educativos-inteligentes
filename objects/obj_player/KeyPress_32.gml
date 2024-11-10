/// @description Context-sensitive actions


var _text, _seq, _text_instance;

// Si el jugador tiene control:
if (global.playerControl == true) {
    // Si hay un NPC cerca
    if (global.nearbyNPC) {
			//global.playerControl = false; //para que el jugador se quede quieto
			show_debug_message(global.nearbyNPC.idNPC);
			var npcID = global.nearbyNPC.idNPC;
			var dialogues = global.dialogues[? global.nearbyNPC.dialogoNPC];
			show_debug_message(dialogues);
			
			global.currentDialogue = dialogues;
			global.currentMessageIndex = 0;
			global.playerControl = false;
			instance_create_depth(global.nearbyNPC.x, global.nearbyNPC.y - 400, -10000, obj_conversation);
				
			//_text_instance = instance_create_depth(global.nearbyNPC.x, global.nearbyNPC.y - 400, -10000, obj_text_es);
			//show_debug_message("obj_text_es creado.");
    }
			
		/*
        // If NPC is "done"
        if (nearbyNPC.myState == npcState.done) {
            // Cambiar a la room del problema matemático si se presiona espacio
            if (espacio_pulsado == 1 && keyboard_check_pressed(vk_space)) {
                room_goto(rm_problema);
                show_debug_message("Cambiando a la room de problemas.");
            }
            _text = nearbyNPC.itemTextDone;
            if (!instance_exists(obj_textbox)) {
                iii = instance_create_depth(nearbyNPC.x, nearbyNPC.y - 400, -10000, obj_textbox);
                // iii.textToShow = _text;
            }
        }
		*/
}
