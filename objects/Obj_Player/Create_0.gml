// Inherit the parent event
event_inherited();

// Inicializa variáveis globais de vida apenas uma vez
if (!variable_global_exists("vida_maxima")) {
    global.vida_maxima = 3;
}
if (!variable_global_exists("vida_atual")) {
    global.vida_atual = global.vida_maxima;
}

// Sincroniza as variáveis locais com as globais
vida_maxima = global.vida_maxima;
vida_atual = global.vida_atual;

// Variáveis de movimento
velocidade = 4;
gravidade = 0.3;
forca_pulo = -5.5;
qtd_pulos = 0;
max_pulos = 2;

// Estados do jogador
invulneravel = false;
tempo_invulneravel = 0;
move_checkpoint = false;

// Sprites
sprite_run = sprite_mask_run;
sprite_idle = sprite_mask_idle;
sprite_jump = sprite_mask_jump;
sprite_doublejump = sprite_mask_doublejump;
sprite_walljump = sprite_mask_walljump;
sprite_fall = sprite_mask_fall;
 

function input_player()
{

	var _left, _right, _jump, _xDirection;
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_jump = keyboard_check_pressed(ord("W"));
	
	
	_xDirection = _right - _left;
	
	
	var _velh = (_right - _left) * velocidade;
	
	var _no_chao = place_meeting(x,y+1,Obj_Bloco);
	var _na_parede = place_meeting(x+(_xDirection),y,Obj_Bloco);
	
	if(_xDirection != 0)
	{
		image_xscale = _xDirection;
	}
	
	if(_no_chao)
	{
		if(_xDirection != 0)
		{
			sprite_index = sprite_run;
		}
		else
		{
			sprite_index = sprite_idle;
		}
	}
	else if(_na_parede)
	{
		sprite_index = sprite_walljump;
	}
	else
	{
		if(qtd_pulos == (max_pulos-1))
		{
			sprite_index = sprite_jump;
		}
		else
		{
			sprite_index = sprite_doublejump;
		}
		
		if(velv > 0)
		{
			sprite_index = sprite_fall;
		}
	}
	
	if(_no_chao)
	{	
		qtd_pulos = max_pulos;
		if(_jump)
		{
			velv = forca_pulo;
			qtd_pulos--;
			audio_play_sound(sound_pulo,2,false)
		}
	}
	else
	{
		if(_jump && (qtd_pulos == 1 || qtd_pulos == 2))
		{
			qtd_pulos = 1;
			velv = forca_pulo;
			qtd_pulos--;
			audio_play_sound(sound_pulo,2,false)
		}
		
		velv += gravidade;
		
		if(_na_parede)
		{
			velv = 1; 
			
			if(_jump)
			{
				velv = forca_pulo;
				velh = (10 * _xDirection)*-1;
				audio_play_sound(sound_pulo,2,false)
				
			}
		}
	}
	
	velh = lerp(velh,_velh, .1);
}