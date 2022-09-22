#include "Stock.h"

Stock::Stock(Position p_position)
{
    m_position = p_position;
    spawn(m_position);
}

void Stock::setPosition(Position p_position)
{
    m_position = p_position;
}

Position Stock::getPosition()
{
    return m_position;
}

void Stock::spawn(Position p_pos)
{
    SetCursorPos(p_pos.x, p_pos.y);
    std::cout << "🥖";

    m_position = p_pos;
}