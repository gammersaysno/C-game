#ifndef GAME_H
#define GAME_H

#include "Player.h"
#include "Enemy.h"
#include <vector>
#include <memory> // smart pointers

class Game {
    Player player;
    std::vector<std::shared_ptr<Enemy>> enemies;

public:
    Game();
    void start(); // start game loop
};

#endif
