/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_melhoria,1,false);
global.lifepoint+=1;
alarm[4]= 300; //5 segundos definimos o tempo aqui
with (other) {
	instance_destroy();
}





