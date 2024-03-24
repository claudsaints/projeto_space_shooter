// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
// define altenancia de tranparência do objeto ate sua eliminação.
function outsprites(){
		if (alarm[0] <=0){
			image_alpha -=0.05;
			if (image_alpha<=0){
				instance_destroy();
			}
		}else{
			image_alpha +=0.05;
		}
}
// Define que o projetil que sair da area de x ou y, vai se destruido.
function passou_sumiu(){
 if (y<= 0) {
  instance_destroy();
 }else if (y>+ room_height){
  instance_destroy();
 }
 if (x<=0) {
	 instance_destroy();
 }else if (x>= room_width){
	instance_destroy();
 }
}
// define a alternancia de transparência de texto para dar destaque...
function text_trans(){
	if(alfa <=0){
		alfa_add = 0.05;
	}else if (alfa >=1){
		alfa_add -= 0.05;
	}
	alfa +=alfa_add;
}
