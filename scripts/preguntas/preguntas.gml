function preguntas(){
    // Verifica si el archivo existe
    if (file_exists(working_directory + "preguntas.json")) {
        var json = "";
        var _file = file_text_open_read(working_directory + "preguntas.json");

        // Lee el archivo línea por línea y acumula en json
        while (!file_text_eof(_file)) {
            json += file_text_readln(_file);
        }

        file_text_close(_file);
        
        // Decodifica el JSON
        var return_map = json_decode(json);
        
        show_debug_message("JSON cargado: " + json);
        show_debug_message("Mapa decodificado: " + string(return_map));
        
        return return_map;
    } else {
        // Si no existe el archivo, retorna undefined
        return undefined;
    }
}