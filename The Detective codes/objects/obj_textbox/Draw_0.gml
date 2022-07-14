//Desenha a caixa de texto
draw_sprite(spr_textbox, 0, x,y);
//Escreve o texto
draw_set_font(fnt_text);
draw_text_ext(x,y, text, stringH, textboxW);