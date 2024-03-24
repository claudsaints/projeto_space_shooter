/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true,true,0);
image_angle += rotac;
if (vida <= 0) {
	audio_play_sound(snd_explosao,1,false);
	global.point+=15
	repeat(2){
		instance_create_layer(x,y,"Instances",obj_satelite_pequeno); //cria 3 obj ast_medio 
	}
	repeat(8){
		instance_create_layer(x,y,"Instances",obj_detrito);
	}
	instance_destroy();
}




