#include "Characters.h"
#include <algorithm>

Character::Character(string n, int h, int a) : name(n), hp(h), maxHP(h), attackPower(a) {} 

bool Character::isAlive() { return hp > 0; } // Alive if hp is above 0

void Character::takeDamage(int damage) { // damage
    hp -= damage;
    if (hp < 0) hp = 0; // prevent -HP
}

void Character::heal(int amount) {
    hp += amount;
    if (hp > maxHP) hp = maxHP; // prevent over max hp
}

int Character::getHP() { return hp; } // current hp
int Character::getMaxHP() { return maxHP; } // max hp
string Character::getName() { return name; } // name Doesn't matter
int Character::attack() { return attackPower; } // attack power
