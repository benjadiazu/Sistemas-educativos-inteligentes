
function preguntas(){
    if(file_exists(working_directory + "preguntas.json")){
        json = ""
        _file = file_text_open_read(working_directory + "preguntas.json")
        
        while(file_text_eof(_file) == false){
            json += file_text_readln(_file)
        }
    
        file_text_close(_file)
        return_map = json_decode(json)
		show_debug_message(json);
        
        return return_map
        
    }else{return undefined}
}