/// @description Inserir descrição aqui
// quando o alrme chega a zero ele retorna a colisão
//SE ESCUDO FOR VERDADERO APENAS DEIXA FALSO SE NAO A NAV ETOMA HIT E o asteroride tambem...
if (alarm[0] <=0 ) {
	if( escudo== true){
		escudo = false;
	}else{
			global.lifepoint-= 1;
	}
	with (other) {
		audio_play_sound(snd_hit,1,false);
		vida-=1;
	}
		alarm[0] = 180;
}


