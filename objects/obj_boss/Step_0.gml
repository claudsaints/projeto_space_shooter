/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true,true,0);
var _db= point_direction(x,y,obj_nave.x,obj_nave.y);
direction= _db;
image_angle= direction;
if (vida >250){
	if (alarm[0] == 1){
		repeat(1){
			instance_create_layer(x,y,"Instances",obj_alien);
		}
		alarm[0]= 1800;
	}
}else if (vida>200){
	sprite_index=spr_endboss_move;
	if distance_to_object(obj_nave) <= dist_perceg{
		move_towards_point(obj_nave.x,obj_nave.y,velc_boss);// faz seguir o obj nave
		speed=2;
	}else if distance_to_object(obj_nave) >= dist_release || distance_to_object(obj_nave) <= 10{
		speed=1.5;
	}
}else if (vida >100 ||  distance_to_object(obj_nave) < dist_release){
	if(alarm[1] == 1){
		audio_play_sound(snd_boss,1,false);
		var _bs1 =instance_create_layer(x,y,"Instances",obj_boss_shoot);
		var _bs2 =instance_create_layer(x,y,"Instances",obj_boss_shoot);
		_bs1.speed= 5;
		_bs1.direction= _db-23;
		_bs1.image_angle= direction ;
		_bs2.speed= 5;
		_bs2.direction= _db+23;
		_bs2.image_angle= direction ;
	}else if(alarm[2] == 1){
		var _bs0=instance_create_layer(x,y,"Instances",obj_boss_shoot);
		_bs0.speed= 5;
		_bs0.direction= _db;
		_bs0.image_angle= direction;
	}
}
if (vida>1 && vida<100){
	sprite_index=spr_endboss_movef;
	speed=2.5;
}
if (vida <= 0) {
	audio_play_sound(snd_explosao,1,false);// toca audio uma vez apenas.
	with(other){
		global.point+=400;
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_detrito);
	}
	instance_destroy(obj_boss);
}





