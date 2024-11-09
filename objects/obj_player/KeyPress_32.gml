/// @description Context-sensitive actions


var _text, _seq;

// If player has control
if (global.playerControl == true) {
    // If near an NPC
    if (nearbyNPC) {
        // If NPC is still available
        if (nearbyNPC.myState == npcState.normal) {
            //_text = nearbyNPC.myText;
            if (!instance_exists(obj_text_es)) {
				global.playerControl = false;
				var text_instance = instance_create_depth(nearbyNPC.x, nearbyNPC.y - 400, -10000, obj_text_es);
				show_debug_message("obj_text_es creado.");
                //iii = instance_create_depth(nearbyNPC.x, nearbyNPC.y - 400, -10000, obj_textbox);
                // iii.textToShow = _text;
            }
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
}
