#define GAME_H

#include "raylib.h"

struct Game {
  Game();

  void draw();
  void update();

  Color backgroundColor = RAYWHITE;
};
