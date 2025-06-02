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
forca_pulo = -6.;
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
 

if (variable_global_exists("room_voltar")) {
    if (room == global.room_voltar) {
        if (variable_global_exists("player_x")) {
            x = global.player_x;
            y = global.player_y;
        }

        // Elimina os dados depois de restaurar
        global.room_voltar = noone;
        global.player_x = -1;
        global.player_y = -1;
    }
}

function input_player()
{

	var _left, _right, _jump, _xDirection;
	
	_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
_jump = keyboard_check(vk_up) or keyboard_check_pressed(ord("W"));

// Se o obj_btn_virtual_input existir, use os estados dele também
if (instance_exists(obj_btn_virtual_input)) {
    _left  = _left  || obj_btn_virtual_input.btn_left;
    _right = _right || obj_btn_virtual_input.btn_right;
    _jump  = _jump  || obj_btn_virtual_input.btn_jump;
}
	
	
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
		var efeito_id = audio_play_sound(sound_pulo, 0, false);
audio_sound_gain(efeito_id, global.sfx_volume, 0);

		}
	}
	else
	{
		if(_jump && (qtd_pulos == 1 || qtd_pulos == 2))
		{
			qtd_pulos = 1;
			velv = forca_pulo;
			qtd_pulos--;
			var efeito_id = audio_play_sound(sound_pulo, 0, false);
audio_sound_gain(efeito_id, global.sfx_volume, 0);

		}
		
		velv += gravidade;
		
		if(_na_parede)
		{
			velv = 1; 
			
			if(_jump)
			{
				velv = forca_pulo;
				velh = (10 * _xDirection)*-1;
				var efeito_id = audio_play_sound(sound_pulo, 0, false);
audio_sound_gain(efeito_id, global.sfx_volume, 0);

				
			}
		}
	}
	
	velh = lerp(velh,_velh, .1);
}


