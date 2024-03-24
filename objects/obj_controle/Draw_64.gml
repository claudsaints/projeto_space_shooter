/// @description Hub 
var _cred = make_color_rgb(100,1,1);
var _larg = window_get_width(); // pega a largura da janela,tambem podemos colocar display_get_gui width ou height... 
var _altu = window_get_height(); // pega a altura...
draw_set_font(fnt_based);
if (room==rm_menu1){
	text_trans();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_larg/2,_altu/3,"Bem Vindo. Estamos em guerra com StarHaze, você foi convocado a liderar o ataque, cuidado com os obstáculos...",30,500,c_aqua,c_aqua,c_aqua,c_aqua,1);
	draw_text_color(_larg/2,_altu -_altu/3,"Aperte Espaço Para Inciar",c_white,c_white,c_white,c_white,alfa);
	if keyboard_check_pressed(vk_space){
		room_goto(rm_roomgame);
	}
}else if (room == rm_roomgame || room== rm_naves || room==rm_boss){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(20,20,"Vidas: " + string(global.lifepoint),_cred,_cred,_cred,_cred,1);
	// primerio criamos a var da cor, apos definimos um desenho, x,y, vai aparecer o texto vidas + o número de vidas da nave, cores, e por ultimo a tranparencia...
	draw_text_color(20,40,"Pontuação: " + string(global.point),c_white,c_white,c_white,c_white,1);
}else if (room == rm_menu2){
	audio_stop_sound(snd_rm_1);
	text_trans();
	draw_set_halign(fa_center); // hotizontal alinhamento
	draw_set_valign(fa_middle); // vetical top, middle,etc.
	
	draw_text_ext_color(_larg/2,_altu/3,"Parabéns. Você passou pelo lixo espacial de StarHaze. Agora temos que enfrentar as naves... Tome cuidado, estamos contando com você. ",30,500,c_white,c_white,c_white,c_white,1);
	draw_text_color(_larg/2,_altu - _altu/3,"Aperte Espaço Para Continuar",c_aqua,c_aqua,c_aqua,c_aqua,alfa);
	if keyboard_check_pressed(vk_space){		
		room_goto(rm_naves);
	}
}else if (room == rm_menu3){
	audio_stop_sound(snd_rm_2);
	text_trans();
	draw_set_halign(fa_center); // hotizontal alinhamento
	draw_set_valign(fa_middle); // vetical top, middle,etc.
	
	draw_text_ext_color(_larg/2,_altu/3,"Agora iremos para nossa última batalha, a nave DeathSkull, ela consegue convocar naves no seu primeiro estágios. Pois então tome cuidado. ",30,500,c_white,c_white,c_white,c_white,1);
	draw_text_color(_larg/2,_altu - _altu/3,"Aperte Espaço Para Continuar",c_aqua,c_aqua,c_aqua,c_aqua,alfa);
	if keyboard_check_pressed(vk_space){		
		room_goto(rm_boss);
	}
}else if (room== rm_final){
	text_trans();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_larg/2,_altu/3,"Incrível, a guerra ainda não acabou. Mas temos que comemorar essa vitória!!!.",30,500,c_aqua,c_aqua,c_aqua,c_aqua,1);
	draw_text_color(_larg/2,_altu - _altu/3,"Obrigado Por Jogar",c_white,c_white,c_white,c_white,alfa);
	if keyboard_check_pressed(vk_space){		
		game_restart();
	}
}else if (room== rm_gameover){
	text_trans();
	draw_set_font(fnt_titandover);
	draw_set_halign(fa_center); // hotizontal alinhamento
	draw_set_valign(fa_middle); // vetical top, middle,etc.
	
	draw_text_ext_color(_larg/2,_altu/3,"Game Over",30,500,c_red,c_red,c_red,c_red,1);
	draw_text_color(_larg/2,_altu - _altu/3,"Aperte Espaço Para Reiniciar",c_white,c_white,c_white,c_white,alfa);
	if keyboard_check_pressed(vk_space){		
		game_restart();
	}
}

