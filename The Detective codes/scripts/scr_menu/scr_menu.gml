//Variaveis para transição no menu.
menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index =0;
if (menu_index != last_selected) {
	part_particles_create(particle_effects, menuX, menuY + buttonH/2 + (buttonH + buttonP) * menu_index, box_flash, 1);
	audio_play_sound(snd_menu_switch,1,false);
}
last_selected = menu_index;
//Aplicação da seleção de botão.
if (keyboard_check_pressed(vk_enter)){
switch(menu_index){
case 0:
	room_goto(rm_rua_palacy);
	audio_sound_gain(snd_menu,0,2000);
	show_debug_message("novo jogo");
	break;
case 1:
{
	show_debug_message("carregar jogo");
	if (global.Save) game_load("save.dat");
	instance_create_layer(64,64,"Text_instance",obj_textConfirm);
	with(obj_textConfirm){
		loadConfirm = true;
		}
}
	break;
case 2:
	show_debug_message("opções");
	break;
case 3:
	game_end();
	break;
	}
}