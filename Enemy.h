#ifndef ENEMY_H
#define ENEMY_H

#include "Characters.h"

class Enemy : public Character {
public:
    Enemy(string n, int h, int a);
    virtual int randomAction(); // 0 = attack, 1 = nothing
};

// Specific enemies
class Spider : public Enemy {
public:
    Spider();
};

class Zombie : public Enemy {
public:
    Zombie();
};

class Skeleton : public Enemy {
public:
    Skeleton();
};

#endif
