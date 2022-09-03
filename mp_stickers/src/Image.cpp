/**
 * @file Image.cpp
 * Extension of a simple PNG class using HSLAPixels and the lodepng PNG library.
 *
 * @author Antony Silvetti-Schmitt
 */


#include "./Image.h"
#include "cs225/RGB_HSL.h"
#include "cs225/HSLAPixel.h"
#include <math.h>

using namespace cs225;


void Image::lighten() {
    lighten(.1);
}

void Image::lighten(double amount) {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentluminance = toChange.l;
            if (currentluminance + amount > 1) {
                toChange.l = 1;
            } else {
                toChange.l += amount;
            }
        }
    }
}

void Image::darken() {
    darken(0.1);
}

void Image::darken(double amount) {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentluminance = toChange.l;
            if (currentluminance - amount < 0) {
                toChange.l = 0;
            } else {
                toChange.l -= amount;
            }
        }
    }
}

void Image::saturate() {
    saturate(0.1);
}

void Image::saturate(double amount) {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentsaturation = toChange.s;
            if (currentsaturation + amount > 1) {
                toChange.s = 1;
            } else {
                toChange.s += amount;
            }
        }
    }
}

void Image::desaturate() {
    desaturate(0.1);
}

void Image::desaturate(double amount) {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentsaturation = toChange.s;
            if (currentsaturation - amount < 0) {
                toChange.s = 0;
            } else {
                toChange.s -= amount;
            }
        }
    }
}

void Image::greyscale() {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            toChange.s = 0;
        }
    }
}

void Image::rotateColor(double degrees) {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentHue = toChange.h;
            currentHue = fmod(currentHue + degrees, 360);
            // currentHue = (currentHue + degrees) % 360.0;
            if (currentHue < 0) {
                toChange.h = 360 + currentHue; // currentHue is going to be negative which is why we are adding
            } else {
                toChange.h = currentHue;
            }
        }
    }
}

void Image::illinify() {
    for (size_t i = 0; i < this->width(); i++) {
        for (size_t j = 0; j < this->height(); j++) {
            HSLAPixel& toChange = this->getPixel(i,j);
            double currentHue = toChange.h;
            
            // now we compare difference of hues to both illini color, the constants are orange and blue hues
            double bluediff = abs(currentHue - 216);
            double orangediff = abs(currentHue - 11);
            // what abt equal distance?
            if (orangediff <= bluediff) {
                toChange.h = 11;
            } else {
                toChange.h = 216;
            }
        }
    }
}

void Image::scale(double factor) {
 
    unsigned int newWidth = width() * factor;
    unsigned int newHeight = height() * factor;

    Image original = Image(*this); 

    resize(newWidth, newHeight);
    
    // Copy the current data to the new image data, using the existing pixel
    // for coordinates within the bounds of the old image size
    double originalcoordinatex = 0;
    double originalcoordinatey = 0;
    double inversefactor = 1/factor;

    for (unsigned x = 0; x < newWidth; x++) {
      for (unsigned y = 0; y < newHeight; y++) {
        if ((unsigned int) originalcoordinatex < original.width() && (unsigned int) originalcoordinatey < original.height()) {

          const HSLAPixel oldPixel = original.getPixel(originalcoordinatex, originalcoordinatey);
          HSLAPixel & newPixel = this->getPixel(x, y);
          newPixel = oldPixel;
          originalcoordinatey += inversefactor;
        }
      }
      originalcoordinatey = 0;
      originalcoordinatex += inversefactor;
    }
}

void Image::scale(unsigned w, unsigned h) {
    double scalefactorwidth = w / width();
    double scalefactorheight = h / height();
    if (scalefactorwidth <= scalefactorheight) {
        scale(scalefactorwidth);
    } else {
        scale(scalefactorheight);
    }
}


