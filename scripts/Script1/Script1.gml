function muda_sprite(_sprite)
{
	if(sprite_index != _sprite)
	{
		sprite_index = _sprite;
		image_index = 0;
	}
}

function transicao_simples(_room)
{
	var _tranicao = instance_create_layer(0,0,layer,Obj_transicao);
	_tranicao.rm_destino = _room;
}
