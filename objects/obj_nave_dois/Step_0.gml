if keyboard_check(vk_up){
	sprite_index= spr_navedois_andando;
	speed=veloct;
}else if keyboard_check(vk_down){
	sprite_index= spr_navedois_andando;
	speed= -veloct;
}else{
	sprite_index= spr_navedois;
	speed= lerp(speed,0, 0.5); // continua  a movimentação por um breve periodo
}

if keyboard_check(vk_left){
	direct= 3;
} else if keyboard_check(vk_right){
	direct= -3;
}else {
	direct= lerp(direct,0, 0.08); 
}
direction += direct;
if keyboard_check_pressed(vk_space){
	var _segin = instance_create_layer(x,y,"Instances",obj_projetil);
	_segin.speed = speed_p;
	_segin.direction= direction;
	_segin.image_angle= direction;
	_segin.dano = dano_nave;
	
}
image_angle = direction;
move_wrap(true,true,0);
//reseta o game caso a vida da nave seja menor ou igual a zero
// define um vaor para a variavel de transparence com base no alarm...
if (alarm[0] >0){
	if (image_alpha <= 0) {
		alfa_add = 0.05;
	}else if (image_angle >= 1){
		alfa_add = -0.05;
	}
	image_alpha += alfa_add;
}

if (vida_nave<=0){ 
	outsprites();
}else{
	image_alpha=1; // retorna a nave para a transparencia original...
}

