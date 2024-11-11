/// @description Player movement, more

// Check keys for movement
if (global.playerControl == true) {
	if (keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down)){
		image_speed = 0.9;	
	}
	else{
		image_speed = 0;
	}

	moveRight = keyboard_check(vk_right);
	moveUp = keyboard_check(vk_up);
	moveLeft = keyboard_check(vk_left);
	moveDown = keyboard_check(vk_down);
	
	}
if (global.playerControl == false) {
	moveRight = 0;
	moveUp = 0;
	moveLeft = 0;
	moveDown = 0;
	}

/*	
// Run with Shift key
running = keyboard_check(vk_shift);

// Speed up if running
if (running == true) {
	// Ramp up
	if (runSpeed < runMax) {
		runSpeed += 2;
		}
	// Start creating dust
	if (startDust == 0) {
		alarm[0] = 2;
		startDust = 1;
		}
	}
// Slow down if no longer running
if (running == false) {
	// Ramp down
	if (runSpeed > 0) {
		runSpeed -= 1;
		}
	startDust = 0;
	}
*/
// Calculate movement
vx = ((moveRight - moveLeft) * (walkSpeed+runSpeed) * (1-carryLimit));
vy = ((moveDown - moveUp) * (walkSpeed+runSpeed) * (1-carryLimit));

// If Idle
if (vx == 0 && vy == 0) {
	// If I'm not picking up or putting down an item
	if (myState != playerState.pickingUp && myState != playerState.puttingDown) {
		// If we don't have an item
		if (hasItem == noone) {
			myState = playerState.idle;	
			}
		// If we're carrying an item
		else {
			myState = playerState.carryIdle;	
			}
		}
	}

// If moving
if (vx != 0 || vy != 0) {
	// Verificar colisiones en la dirección del movimiento con objetos del entorno y el boss
    if (!collision_point(x + vx, y, obj_par_environment, true, true) && !collision_point(x + vx, y,obj_par_npc, true, true)) {
        x += vx;
    }
    if (!collision_point(x, y + vy, obj_par_environment, true, true) && !collision_point(x, y + vy, obj_par_npc, true, true)) {
        y += vy;
    }
	
	// Change direction based on movement
	if (vx > 0) {
		dir = 0;
		}
	if (vx < 0) {
		dir = 2;
		}	
	if (vy > 0) {
		dir = 3;
		}
	if (vy < 0) {
		dir = 1;
		}

	// Set state
	// If we don't have an item
	if (hasItem == noone) {		
		myState = playerState.walking;
		}
	// If we're carrying an item
	else {
		myState = playerState.carrying;
		}
		
	// Set my listener if Sequence is playing
	if (instance_exists(obj_control) && obj_control.sequenceState == seqState.playing) {
		var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
		var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
		
		audio_listener_set_position(0,_camX,_camY,0);
		}
	else {
		// Otherwise, move audio listener with me
		audio_listener_set_position(0,x,y,0);
		}
	}
	
// Check for collision with NPCs
global.nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);
global.portal = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_portal,false,true);
//show_debug_message(global.nearbyNPC);
// Revisar si hay un NPC amistoso cerca
if (global.nearbyNPC) {
    if (!hasShownFriendlyPrompt) { // Mostrar si no se ha mostrado antes
        npcPrompt = scr_showPrompt(global.nearbyNPC, global.nearbyNPC.x, global.nearbyNPC.y - 350);
        hasShownFriendlyPrompt = true;
        hasShownEnemyPrompt = false;
        
    }
} else if (hasShownFriendlyPrompt) {
    // Desaparecer el prompt si ya no está cerca del NPC
    if (instance_exists(npcPrompt)) {
        scr_dismissPrompt(npcPrompt, 0);
        npcPrompt = noone;
    }
    hasShownFriendlyPrompt = false;
}

if (global.portal) {
	instance_deactivate_all(true); // Desactiva todos los objetos
	global.contador_enemigos_derrotados = 0;
	room_goto_next();
} 

// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];

// Depth sorting
depth =-y;