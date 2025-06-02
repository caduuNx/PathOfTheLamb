//codigo onde controla a colisão

var _colx, _coly;

_colx = instance_place(x+velh,y,Obj_Bloco);
_coly = instance_place(x,y+velv,Obj_Bloco);

if(_colx)
{
	//colisao a direita
   if(velh > 0)
   {
	    x = _colx.bbox_left+(x - bbox_right);
   }
   //colisao a esquerda
    if(velh < 0)
   {
	    x = _colx.bbox_right+(x - bbox_left);
   }
	
   velh = 0;
}

if(_coly)
{
//colisao para baixo
   if(velv > 0)
   {
	    y = _coly.bbox_top+(y - bbox_bottom);
   }
   //colisao a esquerda
    if(velv < 0)
   {
	    y = _coly.bbox_bottom+(y - bbox_top);
   }
	
   velv = 0;

}

x += velh;
y += velv;

if (object_index == Obj_Player) {
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        instance_destroy(); // destrói o player
    }
}



