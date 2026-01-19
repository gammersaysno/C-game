#ifndef CHARACTER_H
#define CHARACTER_H

#include <string>
using namespace std;

class Character {
protected:
    string name;
    int hp;
    int maxHP;
    int attackPower;

public:
    Character(string n, int h, int a);
    virtual ~Character() = default;

    bool isAlive(); // alive check
    void takeDamage(int damage);
    void heal(int amount);

    int getHP(); // hp
    int getMaxHP();
    string getName(); // name
    virtual int attack(); // attack
};

#endif
