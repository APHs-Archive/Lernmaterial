#include "Utils.h"

void SetCursorPos(int XPos, int YPos)
{
    printf("\033[%d;%dH", YPos + 1, XPos + 1);
}

void clearScreen() {
    SetCursorPos(0, 0);
    printf("\033[2J");
}

void BuildBorder() {
    // Set Cursor to Top
    SetCursorPos(0,0);
    // Build Border X
    for (int i = 0; i < 72; i++) {
        std::cout << "#";
    }

    // Set Cursor to Bottom
    SetCursorPos(0,25);
    // Build Border X
    for (int i = 0; i < 72; i++) {
        std::cout << "#";
    }
// Build Border Y: Start
    for(int i = 0; i < 26; i++) {
        SetCursorPos(0, i);
        std::cout << "#";
    }

// Build Border Y: end
    for(int i = 0; i < 26; i++) {
        SetCursorPos(72, i);
        std::cout << "#";
    }
}

int kbhit(void)
{
  struct termios oldt, newt;
  int ch;
  int oldf;
 
  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
  fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);
 
  ch = getchar();
 
  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  fcntl(STDIN_FILENO, F_SETFL, oldf);
 
  if(ch != EOF)
  {
    ungetc(ch, stdin);
    return 1;
  }
 
  return 0;
}