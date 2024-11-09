/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (keyboard_check_pressed(vk_up)){
    opcion_seleccionada -= 1; // Mover hacia arriba
    if (opcion_seleccionada < 0) {
        opcion_seleccionada = array_length_1d(alternativas) - 1;
    }
}

if (keyboard_check_pressed(vk_down)){
    opcion_seleccionada += 1; // Mover hacia abajo
    if (opcion_seleccionada >= array_length_1d(alternativas)) {
        opcion_seleccionada = 0;
    }
}


if (keyboard_check_pressed(vk_left)) {
    opcion_seleccionada -= 1; // Mover hacia la izquierda
    if (opcion_seleccionada < 0) {
        opcion_seleccionada = array_length_1d(alternativas) - 1; 
    }
}

if (keyboard_check_pressed(vk_right)) {
    opcion_seleccionada += 1; // Mover hacia la derecha
    if (opcion_seleccionada >= array_length_1d(alternativas)) {
        opcion_seleccionada = 0;
    }
}

// Confirmar la selección con la tecla ENTER
if (keyboard_check_pressed(vk_enter)) {
    var seleccion = alternativas[opcion_seleccionada];
    
    //show_message("Has seleccionado: " + seleccion);
    
    if (seleccion == "70") {
         show_message("¡Correcto!");
    } else {
         show_message("Incorrecto. Inténtalo de nuevo.");
    }
	room_goto_previous()
}