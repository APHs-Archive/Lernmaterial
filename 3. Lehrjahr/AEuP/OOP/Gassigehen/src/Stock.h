#pragma once
#include "Utils.h"

class Stock
{
private:
    Position m_position;
public: 
    Stock(Position p_position);
    void spawn(Position p_pos);
    void setPosition(Position p_position);
    Position getPosition();
};