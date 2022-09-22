#include "Hund.h"

Hund::Hund(std::string p_name, std::string p_furColor, int p_age, Position p_position) {
    this->m_age = p_age;
    this->m_furColor = p_furColor;
    this->m_name = p_name;
    this->m_position = p_position;
}

void Hund::walk(int x, int y) {
    m_position.x += x;
    m_position.y += y;
    // Check if dog is out of bounds
    if(m_position.x > 70) m_position.x = 1;
    if(m_position.y > 24) m_position.y = 1;
    if(m_position.x < 1) m_position.x = 70 - m_position.x;
    if(m_position.y < 1) m_position.y = 24 - m_position.y;
}

void Hund::eat() {
    // TODO: Implement
}

Position Hund::getPosition() {
    return m_position;
}

std::string Hund::getName() {
    return m_name;
}
