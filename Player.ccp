#include "Player.h"

Player::Player(string n) : Character(n, 100, 20) {} // player stats: HP 100, Attack 20
//Defend action
void Player::defend() {
    cout << name << " verdedigt en ontvangt minder schade!\n";
}
//Healing item
void Player::usePotion() {
    int healAmount = 30;  // amount of healing
    heal(healAmount);
    cout << name << " gebruikt een potion en geneest " << healAmount << " HP!\n";
}
