#include "Game.h"
#include "Constants.h"

Game::Game() {
  // Initialization
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Raylib Test");

  SetTargetFPS(60);
}

void Game::draw() {
  // Draw the game
  BeginDrawing();

  ClearBackground(this->backgroundColor);

  DrawText("Press [SPACE] to start", 20, 20, 20, BLACK);

  EndDrawing();
}

void Game::update() {
  // Update the game
}
