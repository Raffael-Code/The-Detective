draw_self() // Desenha a si mesmo , usado para não ter bug no evento draw
draw_set_colour(c_black)//define a cor do texto
draw_set_font(fnt_arial)//define a fonte do texto
draw_set_halign(fa_left)
var margem =  sprite_get_width(spr_dialog) 

if obj_dialog.image_speed == 0//se a velocidade da imagem da caixa de texto for igual a zero, evita que o texto seja desenhado 
//antes que a caixa de texto abra. 
    {
        if string_length(texto) < string_length(inst.dialogo[t])//se o texto for menor que o texto de origem
        {
            texto = string_copy(inst.dialogo[t],1,contador) /*copia o primeiro caractere do texto[t] até a posição do caractere 
            determinado pelo número da variável contador*/
            contador++ //contador aumenta mais uma unidade         
        }
        if string_length(texto) == string_length(inst.dialogo[t])// se os textos forem iguais 
        {
            if keyboard_check_pressed(vk_enter) // e apertar enter
            {
                contador = 0 // reinicia o contador
                if string_length(inst.dialogo[t+1]) > 0 //se o tamanho do próximo texto for maior que zero(por isso a ultima frase tem que ser //vazia
                {
                    texto = "" //limpa o texto 
                    t ++ //variável "t" aumenta mais uma unidade         
                }
                else // se o próximo texto for vazio e apertar enter 
                {
                    obj_player.showdialog = false // o dialogo é desativado
                    t = 0 // variável "t" zera, para q o NPC comece o dialogo do inicio
                 //   inst.contato = inst.contato+1; //inst.primeiro_contato = false // verifica se é o primeiro contato com o NPC, serve para o mesmo NPC ter diálogos diferentes, muito útil para quests e mudanças que podem ocorrer no jogo.
                }
            }
        }
// desenhar o texto fica ao seu critério 
            //draw_text_ext(x - 120,y - 28 ,texto,16,240) // desenha o texto na posição determinada
			draw_text_ext(obj_dialog.x - +15,obj_dialog.y - -18 ,texto, 10,margem -5) // desenha o texto na posição da caixa de texto

    }