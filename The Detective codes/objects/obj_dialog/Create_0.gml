// Sempre que o objeto for criado:
image_index = 0 //a primeira sub imagem é a de número zero
image_speed = 1//velocidade da animação da caixa de texto
inst = instance_position(obj_player.x ,obj_player.y,obj_contato_npc) //atribui o valor da ID do NPC que está interagindo
t = 0 //essa variável serve pra pular para a próxima fala do NPC
contador = 0 // serve pra dar o efeito de maquina de escrever quando for desenhar o texto
texto = "" // variável que será desenhada depois de todo o processo