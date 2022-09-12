#include "Image.h"
#include "StickerSheet.h"

int main() {
  //
  // Reminder:
  //   Before exiting main, save your creation to disk as myImage.png
  //

  Image gme; gme.readFromFile("../GameStop.png");
  Image dog; dog.readFromFile("../dog.png");
  Image troll; troll.readFromFile("../troll.png");
  Image wsb; wsb.readFromFile("../wsb.png");

  StickerSheet myImage(gme, 3);
  myImage.addSticker(dog, 0, 0);
  myImage.addSticker(troll, 200, 300);
  myImage.addSticker(wsb, 500, 600);

  myImage.render().writeToFile("../myImage.png");
  return 0;
}
