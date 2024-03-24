/// @description sistema que duplica obj nave
// Você pode escrever seu código neste editor
audio_play_sound(snd_melhoria,1,false);
alarm[3]= 300;
nnave=2;
while (nnave<=3){
	instance_create_layer(x,y,"Nave",obj_nave_dois); //criamos uma camada separada onde add obj nave 2 apena uma vez
	nnave+=1;
}
with(other) {
	instance_destroy();
}



