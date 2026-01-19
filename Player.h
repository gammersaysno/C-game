#ifndef PLAYER_H
#define PLAYER_H

#include "Characters.h"
#include <iostream>
using namespace std;

class Player : public Character {
public:
    Player(string n);
    void defend();
    void usePotion();
};

#endif

