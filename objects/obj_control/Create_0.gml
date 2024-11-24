// Verificar si el mapa global.dialogues no existe y crearlo si es necesario
global.map_preguntas = undefined;
global.dialogues = ds_map_create();
global.currentDialogue = undefined;
global.siguiente_id = 0;

global.vidas = 3;
global.coordenadas_anterior_x = 0;
global.coordenadas_anterior_y = 0;
global.contador_enemigos_derrotados = 0;

// Agregar los diálogos para los NPCs
global.dialogues[? "npc_amistoso"] = [
    "¡Hola, aventurero! ¿Cómo estás?",
    "¡Qué bueno verte por aquí!",
    "Si necesitas ayuda, no dudes en pedírmela."
];
global.dialogues[? "npc_amistoso_2"] = [
    "¿Buscas algo interesante?",
    "¡He oído que te aventuras por los bosques!",
    "Sé que hay muchos misterios por resolver."
];
global.dialogues[? "npc_amistoso_3"] = [
    "¿Te gustaría saber más sobre este lugar?",
    "Aquí todo es tan tranquilo...",
    "Recuerda que la naturaleza tiene sus secretos."
];

// =============== Diálogos para los enemigos ====================
global.dialogues[? "npc_enemigo_1"] = [
    "¡Te voy a derrotar, intruso!",
    "No tienes oportunidad contra mí."
];
global.dialogues[? "npc_enemigo_2"] = [
    "¡Fuera de mi camino, débil!",
    "Tu derrota es inevitable."
];
global.dialogues[? "npc_enemigo_3"] = [
    "¡Enfretate a mi!",
    "¡Preparate para morir!"
];

global.dialogues[? "npc_enemigo_2_1"] = [
    "¡Te voy a derrotar, intruso!",
    "No tienes oportunidad contra mí."
];
global.dialogues[? "npc_enemigo_2_2"] = [
    "¡Fuera de mi camino, débil!",
    "Tu derrota es inevitable."
];
global.dialogues[? "npc_enemigo_2_3"] = [
    "¡Enfretate a mi!",
    "¡Preparate para morir!"
];
global.dialogues[? "npc_enemigo_2_4"] = [
    "Soy el enemigo 2_4",
    "¡Preparate para morir!"
];

global.dialogues[? "npc_enemigo_3_1"] = [
    "¡Te voy a derrotar, intruso!",
    "No tienes oportunidad contra mí."
];
global.dialogues[? "npc_enemigo_3_2"] = [
    "¡Fuera de mi camino, débil!",
    "Tu derrota es inevitable."
];
global.dialogues[? "npc_enemigo_3_3"] = [
    "¡Enfretate a mi!",
    "¡Preparate para morir!"
];
global.dialogues[? "npc_enemigo_3_4"] = [
    "Soy el enemigo 3_4",
    "¡Preparate para morir!"
];

// Diálogos para los bosses
global.dialogues[? "npc_boss_1"] = [
	"Necesitas enfrentarte a los demás para considerarte digno.",
    "¡Finalmente llegas hasta mí, joven desafiante!",
    "No creas que será fácil derrotarme."
];

global.dialogues[? "npc_boss_2"] = [
	"Necesitas enfrentarte a los demás para considerarte digno.",
    "¡Finalmente llegas hasta mí, joven desafiante!",
    "No creas que será fácil derrotarme."
];

global.dialogues[? "npc_boss_3"] = [
	"Necesitas enfrentarte a los demás para considerarte digno.",
    "¡Finalmente llegas hasta mí, joven desafiante!",
    "No creas que será fácil derrotarme."
];

show_debug_message("dialogos creados.");
