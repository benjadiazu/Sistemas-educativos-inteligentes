// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_exportar(_name, _data){
	_f = file_text_open_write(_name+".txt")
	file_text_write_string(_f,_data)
	file_text_close(_f)
}