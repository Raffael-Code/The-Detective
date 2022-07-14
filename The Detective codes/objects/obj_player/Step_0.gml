scr_grvt();
//Dialog
#region
if showdialog == false {scr_moviment()} //vai impedir que o player faça qualquer movimento enquanto estiver "conversando".

if instance_position(x,y,obj_contato_npc) // se o jogador está encostando em qualquer npc(lembra do parentesco?)
//if distance_to_object(obj_contato_npc) <15
{
    if keyboard_check_pressed(vk_enter)//se apertar enter 
    {
        if showdialog == false // se a caixa de dialogo não estiver ativa
        {
            showdialog = true  // irá ativar a caixa de dialogo   
        }
    }
}

if showdialog //verifica se o dialogo estiver ativo
{
    if !instance_exists(obj_dialog)// se estiver ativo verifica se a caixa de dialogo está fechada
    {
        instance_create(x,y-64,obj_dialog) //cria a caixa de dialogo
		
    }
}
#endregion
//Salve e Load
#region
if(keyboard_check_pressed(vk_f2)) && place_meeting(x,y,obj_save_machine){
	global.Save = true;
	game_save("Save.dat");
	instance_create_layer(64,64,"Text_instance",obj_textConfirm);
	with(obj_textConfirm){
		saveConfirm = true;
	}
}
if (keyboard_check_pressed(vk_f4)){
	if (global.Save) game_load("Save.dat")
	instance_create_layer(64,64,"Text_instance",obj_textConfirm);
	with(obj_textConfirm){
		loadConfirm = true;
	}
}
#endregion