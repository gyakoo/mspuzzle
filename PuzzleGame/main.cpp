#include <common.h>
#include <game.h>

int CALLBACK _main(int , const char**)
{
  return 0;
}

int APIENTRY WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
  using namespace PuzzleGame;
  auto comm = std::make_shared<Common>( 800, 600, "Puzzle Game", false );
  Game game(comm);
  game.MainLoop();
  
  return S_OK;
}
