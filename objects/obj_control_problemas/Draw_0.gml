// Configuración general de color y transparencia
draw_set_alpha(0.8);
draw_clear(c_gray);

draw_set_color(c_white);
draw_rectangle(0,0,display_get_width(),display_get_height()/2 - 300, false);

if (global.nearbyNPC.tipo_npc == "enemigo"){
	//show_debug_message("indice pregunta:");
	//show_debug_message(indice_pregunta);
	switch (indice_pregunta){
		case 0:
			draw_circle_color(650,200,15,c_black,c_black,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			break;
		case 1:
			draw_circle_color(650,200,15,c_green,c_green,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			break;
		case 2:
			draw_circle_color(650,200,15,c_green,c_green,false);
			draw_circle_color(700,200,15,c_green,c_green,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			break;
	}
}
else {
	if (global.nearbyNPC.tipo_npc == "jefe"){
		switch (indice_pregunta){
		case 0:
			draw_circle_color(550,200,15,c_black,c_black,false);
			draw_circle_color(600,200,15,c_black,c_black,false);
			draw_circle_color(650,200,15,c_black,c_black,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		case 1:
			draw_circle_color(550,200,15,c_green,c_green,false);
			draw_circle_color(600,200,15,c_black,c_black,false);
			draw_circle_color(650,200,15,c_black,c_black,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		case 2:
			draw_circle_color(550,200,15,c_green,c_green,false);
			draw_circle_color(600,200,15,c_green,c_green,false);
			draw_circle_color(650,200,15,c_black,c_black,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		case 3:
			draw_circle_color(550,200,15,c_green,c_green,false);
			draw_circle_color(600,200,15,c_green,c_green,false);
			draw_circle_color(650,200,15,c_green,c_green,false);
			draw_circle_color(700,200,15,c_black,c_black,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		case 4:
			draw_circle_color(550,200,15,c_green,c_green,false);
			draw_circle_color(600,200,15,c_green,c_green,false);
			draw_circle_color(650,200,15,c_green,c_green,false);
			draw_circle_color(700,200,15,c_green,c_green,false);
			draw_circle_color(750,200,15,c_black,c_black,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		case 5:
			draw_circle_color(550,200,15,c_green,c_green,false);
			draw_circle_color(600,200,15,c_green,c_green,false);
			draw_circle_color(650,200,15,c_green,c_green,false);
			draw_circle_color(700,200,15,c_green,c_green,false);
			draw_circle_color(750,200,15,c_green,c_green,false);
			draw_circle_color(800,200,15,c_black,c_black,false);
			break;
		}	
	}
}

//draw_set_color(c_blue);
//draw_rectangle(0,display_get_height() / 2,display_get_width(),display_get_height(), false);

draw_set_color(c_black);
// Función para centrar texto dentro de una caja y colorearla
function draw_centered_text_in_box(box_x, box_y, sprite_name, aux) {
	var box_width = 350;
	var box_height = 150;

    var text_width = string_width(sprite_name);
    var text_height = string_height(sprite_name);
	
	//Esto es para cambiar el color rojo si se está "parado" en la alternativa.
	if (aux == indice){
		draw_set_color(c_red);
	}
	else {
		draw_set_color(c_white);
	}

    // Dibujar caja
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);

    // Dibujar texto centrado en la caja
    draw_set_color(c_black);
	//show_debug_message(sprite_name);
	
	draw_sprite(sprite_name,0,box_x+box_width/2,box_y+box_height/2 - 10);
    //draw_text(box_x + (box_width - text_width) / 2, box_y + (box_height - text_height) / 2, text);
}


switch (indice_pregunta) {
    case 0:
        alternativas = alternativas_pregunta_1;
        pregunta_actual = preguntas_npc[0];
        respuesta_actual = respuestas_correctas[0];
        break;
    case 1:
        alternativas = alternativas_pregunta_2;
        pregunta_actual = preguntas_npc[1];
        respuesta_actual = respuestas_correctas[1];
        break;
    case 2:
        alternativas = alternativas_pregunta_3;
        pregunta_actual = preguntas_npc[2];
        respuesta_actual = respuestas_correctas[2];
        break;
    case 3:
        alternativas = alternativas_pregunta_4;
        pregunta_actual = preguntas_npc[3];
        respuesta_actual = respuestas_correctas[3];
        break;
    case 4:
        alternativas = alternativas_pregunta_5;
        pregunta_actual = preguntas_npc[4];
        respuesta_actual = respuestas_correctas[4];
        break;
	case 5:
	    alternativas = alternativas_pregunta_6;
	    pregunta_actual = preguntas_npc[5];
	    respuesta_actual = respuestas_correctas[5];
	    break;
}

draw_sprite(pregunta_actual,0,(display_get_gui_width() / 2 - 250),(display_get_gui_height() / 2 - 450));


if (global.nearbyNPC.dialogoNPC == "npc_enemigo_1"){
	draw_text(250, 40, "Representar en lenguaje algebraico");
}
if (global.nearbyNPC.dialogoNPC == "npc_enemigo_2"){
	draw_text(250, 40, "Representar en lenguaje natural");
}
if (global.nearbyNPC.dialogoNPC == "npc_enemigo_3"){
	draw_text(250, 40, "Reemplaza los valores de x");
}
if (global.nearbyNPC.dialogoNPC == "npc_enemigo_2_1" or global.nearbyNPC.dialogoNPC == "npc_enemigo_2_2" or global.nearbyNPC.dialogoNPC == "npc_enemigo_2_3"){
	draw_text(250, 40, "Reducir terminos semejantes");
}
if (global.nearbyNPC.dialogoNPC == "npc_enemigo_3_1" or global.nearbyNPC.dialogoNPC == "npc_enemigo_3_2" or global.nearbyNPC.dialogoNPC == "npc_enemigo_3_3"){
	draw_text(250, 40, "Resuelve la ecuación lineal");
}
if (global.nearbyNPC.dialogoNPC == "npc_boss_1" or global.nearbyNPC.dialogoNPC == "npc_boss_2" or global.nearbyNPC.dialogoNPC == "npc_boss_3"){
	draw_text(250, 40, "Resuelva el siguiente problema");
}

draw_set_font(f_menu);
//dibujar vidas
draw_text(50, 50, "Vidas: " + string(global.vidas));
draw_text(50, 160, "Muevete entre\nalternativas\ncon las flechas\ndel teclado");
draw_text(1000, 160, "Preciona ESPACIO\npara seleccionar\nla alternativa");
draw_set_font(f_dialog);

//dibujar alternativas
for (var i = 0; i < 4; i++) {
    var a = (i % 2 == 0) ? 325 : 750;
    var b = (i < 2) ? 325 : 550;
	
    draw_centered_text_in_box(a, b, alternativas[i],i);
}

//Esto es para que se siga viendo la pregunta en pantalla
draw_set_alpha(1);
draw_set_color(c_black); 
