/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10935A63
/// @DnDArgument : "var" "msg"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(msg >= 5){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1EFB430F
	/// @DnDParent : 10935A63
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3B8A2816
	/// @DnDParent : 10935A63
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.playerControl = true;$(13_10)show_debug_message("conversation destruida")"
	/// @description Execute Code
	global.playerControl = true;
	show_debug_message("conversation destruida")}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 437595F8
/// @DnDArgument : "var" "msg"
/// @DnDArgument : "value" "1"
if(msg == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42942C59
	/// @DnDComment : With room_height / 2 makes it stand$(13_10)from the middle of the screen.
	/// @DnDParent : 437595F8
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "sprite" "msg_box"
	/// @DnDSaveInfo : "sprite" "msg_box"
	draw_sprite(msg_box, 0, 10, room_height / 2);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 010C87F2
	/// @DnDParent : 437595F8
	/// @DnDArgument : "font" "f_dialog"
	/// @DnDSaveInfo : "font" "f_dialog"
	draw_set_font(f_dialog);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 45AB6504
	/// @DnDComment : With that, the name always have the same$(13_10)space to the sides.
	/// @DnDParent : 437595F8
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 61F9C0F8
	/// @DnDParent : 437595F8
	/// @DnDArgument : "x" "150"
	/// @DnDArgument : "y" "320"
	/// @DnDArgument : "caption" ""Tutoball""
	draw_text(150, 320, string("Tutoball") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 7D4457AC
	/// @DnDParent : 437595F8
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A4C6D64
	/// @DnDComment : Visual version
	/// @DnDParent : 437595F8
	/// @DnDArgument : "var" "ctr"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "string_length(global.text01)"
	if(ctr <= string_length(global.text01)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2802A6E9
		/// @DnDComment : If the ctr adds 0.2, slows down$(13_10)every letter.
		/// @DnDParent : 6A4C6D64
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "ctr"
		ctr += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 312B1D8E
		/// @DnDComment : If there's not an empty espace =$(13_10)there's a letter.
		/// @DnDParent : 6A4C6D64
		/// @DnDArgument : "var" "string_copy(global.text01, ctr, 1)"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "" ""
		if(!(string_copy(global.text01, ctr, 1) == " ")){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
			/// @DnDVersion : 1
			/// @DnDHash : 5D85AC93
			/// @DnDComment : If you don't put this, the sound is going to repeat weird.$(13_10)Now it only play once every time is not a space.
			/// @DnDParent : 312B1D8E
			/// @DnDArgument : "soundid" "voice_typewritter"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "soundid" "voice_typewritter"
			var l5D85AC93_0 = voice_typewritter;if (!audio_is_playing(l5D85AC93_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 523B515C
				/// @DnDParent : 5D85AC93
				/// @DnDArgument : "soundid" "voice_typewritter"
				/// @DnDSaveInfo : "soundid" "voice_typewritter"
				audio_play_sound(voice_typewritter, 0, 0, 1.0, undefined, 1.0);}}}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 75357BEE
	/// @DnDParent : 437595F8
	/// @DnDArgument : "code" "// Witht the global.text01 you can put different languages with the same code,$(13_10)// look in text_en and text_es$(13_10)$(13_10)draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text01, 1, ctr), -1, box);"
	// Witht the global.text01 you can put different languages with the same code,
	// look in text_en and text_es
	
	draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text01, 1, ctr), -1, box);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 4AE50FF4
	/// @DnDParent : 437595F8
	/// @DnDArgument : "font" "f_menu"
	/// @DnDSaveInfo : "font" "f_menu"
	draw_set_font(f_menu);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02F285FE
/// @DnDArgument : "var" "msg"
/// @DnDArgument : "value" "2"
if(msg == 2){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3C43159B
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "sprite" "msg_box"
	/// @DnDSaveInfo : "sprite" "msg_box"
	draw_sprite(msg_box, 0, 10, room_height / 2);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 141D2681
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "font" "f_dialog"
	/// @DnDSaveInfo : "font" "f_dialog"
	draw_set_font(f_dialog);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 05010030
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4D372544
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "x" "150"
	/// @DnDArgument : "y" "320"
	/// @DnDArgument : "caption" ""Tutoball""
	draw_text(150, 320, string("Tutoball") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 7261AB61
	/// @DnDParent : 02F285FE
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 116729DF
	/// @DnDComment : Code version
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "code" "if ctr <= string_length(global.text02)$(13_10){$(13_10) if string_copy(global.text02,ctr,1) !=" "$(13_10) if (!audio_is_playing(voice_typewritter))$(13_10) {$(13_10) audio_play_sound(voice_typewritter,1,false)$(13_10) }$(13_10) ctr+=1;$(13_10)}$(13_10)draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text02, 1, ctr), -1, box);"
	if ctr <= string_length(global.text02)
	{
	 if string_copy(global.text02,ctr,1) !=" "
	 if (!audio_is_playing(voice_typewritter))
	 {
	 audio_play_sound(voice_typewritter,1,false)
	 }
	 ctr+=1;
	}
	draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text02, 1, ctr), -1, box);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 02DA06FF
	/// @DnDParent : 02F285FE
	/// @DnDArgument : "font" "f_menu"
	/// @DnDSaveInfo : "font" "f_menu"
	draw_set_font(f_menu);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F8C97FF
/// @DnDArgument : "var" "msg"
/// @DnDArgument : "value" "3"
if(msg == 3){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 04B97376
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "sprite" "msg_box"
	/// @DnDSaveInfo : "sprite" "msg_box"
	draw_sprite(msg_box, 0, 10, room_height / 2);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 29CC12AD
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "font" "f_dialog"
	/// @DnDSaveInfo : "font" "f_dialog"
	draw_set_font(f_dialog);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0B08E9FF
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 44B17EA0
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "x" "150"
	/// @DnDArgument : "y" "320"
	/// @DnDArgument : "caption" ""Tutoball""
	draw_text(150, 320, string("Tutoball") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 20DF1C9B
	/// @DnDParent : 6F8C97FF
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7C99444A
	/// @DnDComment : Code version
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "code" "if ctr <= string_length(global.text03)$(13_10){$(13_10) if string_copy(global.text03,ctr,1) !=" "$(13_10) if (!audio_is_playing(voice_typewritter))$(13_10) {$(13_10) audio_play_sound(voice_typewritter,1,false)$(13_10) }$(13_10) ctr+=1;$(13_10)}$(13_10)draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text03, 1, ctr), -1, box);"
	if ctr <= string_length(global.text03)
	{
	 if string_copy(global.text03,ctr,1) !=" "
	 if (!audio_is_playing(voice_typewritter))
	 {
	 audio_play_sound(voice_typewritter,1,false)
	 }
	 ctr+=1;
	}
	draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text03, 1, ctr), -1, box);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 3DF6618E
	/// @DnDParent : 6F8C97FF
	/// @DnDArgument : "font" "f_menu"
	/// @DnDSaveInfo : "font" "f_menu"
	draw_set_font(f_menu);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61A10C5D
/// @DnDArgument : "var" "msg"
/// @DnDArgument : "value" "4"
if(msg == 4){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1F000A93
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "sprite" "msg_box"
	/// @DnDSaveInfo : "sprite" "msg_box"
	draw_sprite(msg_box, 0, 10, room_height / 2);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 06CDC844
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "font" "f_dialog"
	/// @DnDSaveInfo : "font" "f_dialog"
	draw_set_font(f_dialog);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 430E2556
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5439F59A
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "x" "150"
	/// @DnDArgument : "y" "320"
	/// @DnDArgument : "caption" ""Tutoball""
	draw_text(150, 320, string("Tutoball") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 10409DA8
	/// @DnDParent : 61A10C5D
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1DB59C88
	/// @DnDComment : Code version
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "code" "if ctr <= string_length(global.text04)$(13_10){$(13_10) if string_copy(global.text04,ctr,1) !=" "$(13_10) if (!audio_is_playing(voice_typewritter))$(13_10) {$(13_10) audio_play_sound(voice_typewritter,1,false)$(13_10) }$(13_10) ctr+=1;$(13_10)}$(13_10)draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text04, 1, ctr), -1, box);$(13_10)"
	if ctr <= string_length(global.text04)
	{
	 if string_copy(global.text04,ctr,1) !=" "
	 if (!audio_is_playing(voice_typewritter))
	 {
	 audio_play_sound(voice_typewritter,1,false)
	 }
	 ctr+=1;
	}
	draw_text_ext(120, display_get_gui_height() / 2 + 100, string_copy(global.text04, 1, ctr), -1, box);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 14F590B0
	/// @DnDParent : 61A10C5D
	/// @DnDArgument : "font" "f_menu"
	/// @DnDSaveInfo : "font" "f_menu"
	draw_set_font(f_menu);}