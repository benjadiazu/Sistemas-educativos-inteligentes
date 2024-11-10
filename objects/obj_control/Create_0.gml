// Verificar si el mapa global.dialogues no existe y crearlo si es necesario
global.map_preguntas = undefined;
global.dialogues = ds_map_create();
global.currentDialogue = undefined;
global.siguiente_id = 0;

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

// Diálogos para los enemigos
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

// Diálogos para los bosses
global.dialogues[? "npc_boss_1"] = [
    "¡Finalmente llegas hasta mí, joven desafiante!",
    "No creas que será fácil derrotarme."
];

show_debug_message("dialogos creados.");
