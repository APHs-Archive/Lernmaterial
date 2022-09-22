#include <iostream>
#include <chrono>    // For Sleep
#include <thread>    // For Sleep
#include "./src/Hund.h"
#include "./src/Utils.h"
#include "./src/Herrchen.h"

Position decideNextMove(Position p_position)
{
    // move randomly up down left right
    int x = rand() % 3 - 1;
    int y = rand() % 3 - 1;

    return (Position){x, y};
}

int main()
{
    // Clear Screen
    clearScreen();

    // Init Variables
    Hund *player1 = new Hund("🐶", "schwarz", 5, (Position){5, 5});          // Main Player
    Stock *stock = new Stock((Position){15, 10});                            // Stock
    Herrchen *herrchen = new Herrchen(player1, stock, "👨", 5, (Position){10, 10}); // Herrchen

    Position oldPlayerPos = player1->getPosition();
    //Position oldAIPos = player2->getPosition();
    Position oldHerrchenPos = herrchen->getPosition();
    bool running = true;

    // sleep for 3 second
    //std::this_thread::sleep_for(std::chrono::milliseconds(3000));


    // Main Loop
    while (running)
    {
        BuildBorder();

        // Handle Player1 Keyboard Input
        if (kbhit())
        {
            switch (getchar())
            {
            case 'i':
                player1->walk(0, -1);
                break;
            case 'j':
                player1->walk(-1, 0);
                break;
            case 'k':
                player1->walk(0, 1);
                break;
            case 'l':
                player1->walk(1, 0);
                break;
            case 'w':
                herrchen->walk(0, -1);
                break;
            case 'a':
                herrchen->walk(-1, 0);
                break;
            case 's':
                herrchen->walk(0, 1);
                break;
            case 'd':
                herrchen->walk(1, 0);
                break;
            case 'f':
                herrchen->throwStock();
                break;
            default:
                break;
            }
        } // End of Keyboard Input

        ////////////////////////////////////////////////////

        // Herrchen
        SetCursorPos(oldHerrchenPos.x, oldHerrchenPos.y);
        std::cout << " ";

        Position posHerchen = herrchen->getPosition();
        SetCursorPos(posHerchen.x, posHerchen.y);
        std::cout << herrchen->getName() << std::endl;

        ////////////////////////////////////////////////////

        // Print Main Player
        SetCursorPos(oldPlayerPos.x, oldPlayerPos.y);
        std::cout << " ";

        // Print new Position
        Position posPlayerOne = player1->getPosition();
        SetCursorPos(posPlayerOne.x, posPlayerOne.y);
        std::cout << player1->getName() << std::endl;

        ////////////////////////////////////////////////////
        // IF Player and AI are on the same position

        // If herrchen and player are on the same position
        if (posPlayerOne.x == posHerchen.x && posPlayerOne.y == posHerchen.y)
        {
            clearScreen();
            std::cout << "Du hast 👨 zerfleischt! GGWP" << std::endl;
            running = false;
        }

        // If herrchen and stock are on the same position
        if (posHerchen.x == stock->getPosition().x && posHerchen.y == stock->getPosition().y)
        {
            herrchen->equipStock();
        }

        // If player and stock are on the same position
        if (posPlayerOne.x == stock->getPosition().x && posPlayerOne.y == stock->getPosition().y)
        {
            clearScreen();
            std::cout << "Du hast 🥖 gefunden! GGWP" << std::endl;
            running = false;
        }

        ////////////////////////////////////////////////////

        // Set old Positions for clearing in next iteration
        oldPlayerPos = posPlayerOne;
        oldHerrchenPos = posHerchen;

        // Sleep as to give the player time to react
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    return 0;
}