#include "Game.h"
#include <iostream>
#include <ctime>
using namespace std;

Game::Game() : player("Rakurai kansuki") {
    enemies.push_back(make_shared<Spider>()); // enemy list
    enemies.push_back(make_shared<Zombie>());
    enemies.push_back(make_shared<Skeleton>());
}

void Game::start() {
    srand(time(0));

    for (auto& enemy : enemies) {
        cout << " Een " << enemy->getName() << " verschijnt!"; // enemy encounter (not random)

        while (player.isAlive() && enemy->isAlive()) {
            cout << " | HP " << player.getName() << ": " << player.getHP() << "/" << player.getMaxHP();
            cout << " | HP " << enemy->getName() << ": " << enemy->getHP() << "/" << enemy->getMaxHP() << endl;

            cout << "Kies actie: \n 1.Aanvallen \n 2.Verdedigen \n 3.Potion gebruiken"; // player choice
            int choice;
            cin >> choice;

            // Player action
            if (choice == 1) {
                cout << player.getName() << " \nvalt aan!\n"; // attack
                enemy->takeDamage(player.attack());
            }
            else if (choice == 2) {
                player.defend(); // defend
            }
            else if (choice == 3) {
                player.usePotion(); // potion
            }
            else {
                cout << "\nOngeldige keuze!";
                continue; 
            }

            // Enemy action
            if (enemy->isAlive()) {
                int action = enemy->randomAction();
                if (action == 0) {
                    cout << enemy->getName() << "valt aan!\n";
                    int damage = enemy->attack();
                    if (choice == 2) damage /= 2; // damage is halved if player is defending
                    player.takeDamage(damage);
                }
                else {
                    cout << enemy->getName() << "\ndoet niets...\n";  // enemy skips
                }
            }
        }

        if (!player.isAlive()) {
            cout << " Je bent verslagen... sad"; // game over (dead)
            return;
        }
        else {
            cout << " Je hebt de " << enemy->getName() << " verslagen!";
        }
    }

    cout << "\n Je hebt alle vijanden verslagen! YIPPIE"; // end text

}
