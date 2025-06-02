var _player = instance_place(x, y - 3, Obj_Player);

if (_player)
{
    muda_sprite(spr_mola_jump);
    flag_colisao = true;

    // TOCAR SOM DA MOLA
    var efeito_id = audio_play_sound(sound_mola, 0, false);
    audio_sound_gain(efeito_id, global.sfx_volume, 0);

    _player.velv = -forca_mola;
    _player.qtd_pulos = _player.max_pulos;
    _player.qtd_pulos--;
}

if (flag_colisao && image_index >= image_number - 1)
{
    muda_sprite(spr_mola);
    flag_colisao = false;
}