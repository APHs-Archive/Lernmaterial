#pragma once

#include <iostream>
#include <string>
#include "Utils.h"

class Hund {
private:
    Position m_position;
    std::string m_name;
    std::string m_furColor;
    int m_age;
    int moves;
public:
    Hund(std::string p_name, std::string p_furColor, int p_age, Position p_position);
    Position getPosition();
    std::string getName();
    void walk(int x, int y);
    void eat();
};
