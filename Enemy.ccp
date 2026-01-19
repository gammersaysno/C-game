#include "Enemy.h"
#include <cstdlib>

Enemy::Enemy(string n, int h, int a) : Character(n, h, a) {}

int Enemy::randomAction() {
    return rand() % 2;
}

// Specific enemies
Spider::Spider() : Enemy("Spider", 50, 10) {} // stats: HP 50, Attack 10
Zombie::Zombie() : Enemy("Zombie", 120, 15) {}
Skeleton::Skeleton() : Enemy("Skeleton", 80, 20) {}
