/// @description Inserir descrição aqui
// with define a alteração do codigo de outro objto mas apenas para colisão
// ex alteramos a variavel vida do asteroide para obter o instance_destroy...
audio_play_sound(snd_hit,1,false);
var _dano= dano;
with (other){
	 vida-= _dano; // tira do asteroide com base no dano
	 
}
instance_destroy();




