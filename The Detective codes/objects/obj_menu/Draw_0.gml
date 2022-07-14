//Variavel para desenhar as opções no menu.
var i = 0;
repeat(buttons){
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	xx = menuX;
	yy = menuY + (buttonH + buttonP) * i;
	draw_set_color(c_dkgray);
	draw_rectangle(xx - buttonW/2, yy, xx - buttonW/2 + buttonW, yy + buttonH, false);
	draw_set_color(c_ltgray);
//Variavel para colorir quando selecionado a opção.
	if(menu_index == i) draw_set_color(c_aqua);
	draw_text(xx, yy + buttonH/2,button[i]);
     i++;	
}