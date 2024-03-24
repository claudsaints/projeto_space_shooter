/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//coisas sque acontecem quando o alarme chega a zero...
//criar dentro do mapa um power up aleratorio...
if(room == rm_roomgame){
	var _mehoria = choose(obj_m_boost,obj_m_shield,obj_m_tnave,obj_m_vida,obj_m_multishoot);	
	instance_create_layer(random_range(0,room_width),random_range(0,room_height),"instances", _mehoria);
	alarm[0]= 400;
}else if( room== rm_naves){
	var _mehoria = choose(obj_m_boost,obj_m_shield,obj_m_tnave,obj_m_vida,obj_m_multishoot);	
	instance_create_layer(random_range(0,room_width),random_range(0,room_height),"instances", _mehoria);
	alarm[0]= 400;
}else if(room== rm_boss){
	var _mehoria = choose(obj_m_boost,obj_m_shield,obj_m_tnave,obj_m_vida,obj_m_multishoot);	
	instance_create_layer(random_range(0,room_width),random_range(0,room_height),"instances", _mehoria);
	alarm[0]= 400;
}




