#pragma once
#include "Hund.h"
#include "Utils.h"
#include "Stock.h"

class Herrchen {
private:
    Hund* hund;
    Stock* stock;
    int m_age;
    Position m_position;
    std::string m_name;
    int moves;
    bool has_stock;
public:
    Herrchen(Hund* hund, Stock* stock, std::string p_name, int p_age, Position p_position);
    Position getPosition();
    std::string getName();
    void walk(int x, int y);
    void throwStock();
    void equipStock();
};