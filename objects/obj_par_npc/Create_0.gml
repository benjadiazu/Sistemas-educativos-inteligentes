idNPC = 0;
tipo_npc = "";
vidas = 1;
nombreNPC = "";
dialogoNPC = "";
//estado = "activo";

if (!variable_global_exists("npc_estados")) {
    global.npc_estados = ds_map_create();
}
if (ds_map_exists(global.npc_estados, id)) {
    estado = global.npc_estados[? id];
} else {
    estado = "activo";
}
if (estado == "derrotado") {
    instance_destroy();
}