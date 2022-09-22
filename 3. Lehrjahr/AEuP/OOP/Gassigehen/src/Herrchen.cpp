#include "Herrchen.h"

Herrchen::Herrchen(Hund *hund, Stock *stock, std::string p_name, int p_age, Position p_position)
{
    this->hund = hund;
    this->m_age = p_age;
    this->m_name = p_name;
    this->m_position = p_position;
    this->stock = stock;
}

void Herrchen::walk(int x, int y)
{
    m_position.x += x;
    m_position.y += y;
    // Check if dog is out of bounds
    if (m_position.x > 70)
        m_position.x = 1;
    if (m_position.y > 24)
        m_position.y = 1;
    if (m_position.x < 1)
        m_position.x = 70 - m_position.x;
    if (m_position.y < 1)
        m_position.y = 24 - m_position.y;
}

Position Herrchen::getPosition()
{
    return m_position;
}

std::string Herrchen::getName()
{
    return m_name;
}

int i = 0;

void Herrchen::equipStock()
{
    has_stock = true;

    SetCursorPos(90, 1);
    i++;
    std::cout << i;
}

void Herrchen::throwStock()
{
    if (has_stock)
    {
        // Random number between 3 and 6
        int distance = rand() % 4 + 3;
        int direction = rand() % 4;
        int x = 0;
        int y = 0;
        switch (direction)
        {
        case 0:
            x = distance;
            break;
        case 1:
            x = -distance;
            break;
        case 2:
            y = distance;
            break;
        case 3:
            y = -distance;
            break;
        default:

            break;
        }
        stock->spawn((Position){m_position.x + x, m_position.y + y});
        has_stock = false;
    }
}