/// @description Proceed to gameplay

if (room == rm_mainTitle) {
	if (global.gameStart == false and global.nombre_jugador != "") {
		audio_stop_all();
		global.gameStart = true;		
		room_goto(rm_gameMain);
		}
	}