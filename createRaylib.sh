touch main.c

echo '
#include"raylib.h"

int main(void)
{
    const int W = 1000; /*larghezza della pagina */
    const int H = 800;  /*altezza della pagina*/
    InitWindow(W, H, "Raylib panel");/*<-- inizializzazione della paggina di raylib specificando larghezza ed altezza e titolo della pagina*/
    SetTargetFPS(100); /* impostazione del target di frame per secodno*/

    while(!WindowShouldClose()) /*tiene aperta la pagina fino a quando non si chiude*/
    {
        BeginDrawing();/*Comincia a disegnare figure sul pannello*/
            ClearBackground(WHITE);/*Colora lo sfondo di Bianco*/
            DrawText("Congratulazioni", 0, 0, 20, BLACK);/*Disegno della scritta congratulazioni alle cordinate 0,0 con il font impostato a 20 di colore nero*/
        EndDrawing();/*finisci di disegnare*/
    }
    CloseWindow();/*chiusura della finestra*/
    return 0;/*azzerazione dei processi*/
}
' >> main.c

cc main.c -o main -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
./main
