#pragma once

#include <stdio.h>
#include <stdio.h>
#include <termios.h>
#include <unistd.h>
#include <fcntl.h>
#include <iostream>

struct Position {
    int x;
    int y;
};

void SetCursorPos(int XPos, int YPos);

void BuildBorder();

int kbhit(void);

void clearScreen();