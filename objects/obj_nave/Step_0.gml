if keyboard_check(vk_up){
	sprite_index= spr_nave_andando;
	speed=veloct;
}else if keyboard_check(vk_down){
	sprite_index= spr_nave_andando;
	speed= -veloct;
}else{
	sprite_index= spr_nave_parada;
	speed= lerp(speed,0,0.5); // continua  a movimentação por um breve periodo
}

if keyboard_check(vk_left){
	direct= 3;
} else if keyboard_check(vk_right){
	direct= -3;
}else {
	direct= lerp(direct,0, 0.1); 
}
direction += direct;
if(nshoots=1){
	if keyboard_check_pressed(vk_space){
		audio_play_sound(snd_projetil,1,false,1,0,random_range(0.8,1.2));
		var _segin = instance_create_layer(x,y,"Instances",obj_projetil);
		_segin.speed = speed_p;
		_segin.direction= direction;
		_segin.image_angle= direction;
		_segin.dano = dano_nave;
	}
}else{
	if keyboard_check_pressed(vk_space){
		audio_play_sound(snd_projetil,1,false);
		var _tiro= instance_create_layer(x,y,"Instances",obj_projetil);
		_tiro.speed= speed_p;
		_tiro.direction= direction;
		_tiro.image_angle= direction;
		_tiro.dano = dano_nave;
		var _tiro1= instance_create_layer(x,y,"Nave",obj_projetil);
		_tiro1.speed= speed_p;
		_tiro1.direction= image_angle+23;
		_tiro1.image_angle= direction;
		_tiro1.dano = dano_nave;
		var _tiro2= instance_create_layer(x,y,"Instances",obj_projetil);
		_tiro2.speed= speed_p;
		_tiro2.direction= image_angle-23;
		_tiro2.image_angle= direction;
		_tiro2.dano = dano_nave;
	}
}

image_angle = direction;
move_wrap(true,true,0);
//reseta o game caso a vida da nave seja menor ou igual a zero
// define um vaor para a variavel de transparence com base no alarm...
if (alarm[0]>0){
	if (image_alpha <= 0) {
		alfa_add = 0.5;
	}else if (image_alpha >= 1){
		alfa_add  -= 0.5;
	}
	image_alpha += alfa_add;
}

if (global.lifepoint<=0){
	room_goto(rm_gameover);
}

// retorna a nave para a transparencia original..
if (room == rm_roomgame){
	if (instance_number(obj_satelite_grande)== 0 && instance_number(obj_satelite_medio)== 0 && instance_number(obj_satelite_pequeno)== 0 ){	
		room_goto(rm_menu2);
	}	
}else if (room == rm_naves){
	if (instance_number(obj_alien) == 0){	
		room_goto(rm_menu3);
	}	
}else if (room == rm_boss){
	if (instance_number(obj_boss) == 0){	
		room_goto(rm_final);
	}	
}