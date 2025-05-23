if(move_checkpoint)
{
	velh = 0;
	velv = 0;
	
	if(image_index >= image_number-1)
	{
		var	_to_start = true;
		
	
		if(_to_start)
		{
			x = Obj_start.x;
			y = Obj_start.y;
		}
		
		muda_sprite(spr_player_enter);
	}
	
	if(image_index >= image_number-1)
	{
		move_checkpoint = false;
	}
}
