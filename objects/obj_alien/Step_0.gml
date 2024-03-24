/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
	var _dd= point_direction(x,y,obj_nave.x,obj_nave.y);
	if distance_to_object(obj_nave) <= dist_perceg{
		move_towards_point(obj_nave.x,obj_nave.y,velc_alien);// faz seguir o obj nave
		speed=2;
	}else if distance_to_object(obj_nave) >= dist_release || distance_to_object(obj_nave) <= 10{
		speed=1;
		move_wrap(true,true,0);
		if (alarm[0] == 1){
			repeat(1){
				audio_play_sound(snd_alien,1,false);
				var _aliens = instance_create_layer(x,y,"Instances",obj_alien_shoot);
				_aliens.speed= 3;
				_aliens.direction= _dd;
				_aliens.image_angle= direction;
			}		
		}
		
	}
if (vida == 25){
	sprite_index=spr_alien_an;
	dist_perceg=1000;
}else if (vida <= 0) {
	audio_play_sound(snd_explosao,1,false); // toca audio uma vez apenas.
	global.point+=50;
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_detrito);
	}
	instance_destroy();
}







