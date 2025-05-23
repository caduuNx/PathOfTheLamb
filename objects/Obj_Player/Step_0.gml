// Contagem de tempo de invulnerabilidade após tomar dano
if (invulneravel) {
    tempo_invulneravel -= 1;
    if (tempo_invulneravel <= 0) {
        invulneravel = false;
    }
}

if(move_checkpoint)
exit;


input_player();