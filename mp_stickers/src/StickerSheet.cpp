/**
 * @file StickerSheet.cpp
 * Implementation of a sticker sheet that can hold stickers to the Image class
 *
 * @author Antony Silvetti-Schmitt
 */

#include "StickerSheet.h"
#include "Image.h"
#include <vector>
#include <iostream>
#include <cassert>

void StickerSheet::_copy(const StickerSheet& other) {
    // first we must clear the image of its data
    while (stickers.size() > 0) {
        removeSticker(0);
    }

    const Image& tmp = *(other.getBaseLayer());
    baseLayer = &tmp;
    stickers = other.getStickers();
    maxStickers = other.getMaxStickers();
    coordinates = other.getCoordinates();
}

StickerSheet::StickerSheet (const Image &picture, unsigned max): maxStickers(max), baseLayer(&picture) {}

StickerSheet::StickerSheet (const StickerSheet &other) {
    // setting two images equal to eachother with the copy constructor in PNG, 
    // should only be using shallow copy here and never be using references or pointers because I want this to be an independent copy
    _copy(other);
}

const StickerSheet & StickerSheet::operator= (const StickerSheet& other) {
    if (this != &other) {_copy(other); }
    return *this;
}



StickerSheet::~StickerSheet () {
    // let's start by deleting the stickers in the vector ... the vector can deallocate itself
    // I never call new, I don't think I have to do anything . . . 
    // I was wrong . . . 
    while (stickers.size() > 0) {
        removeSticker(0);
    }

}

void StickerSheet::changeMaxStickers (unsigned max) {
    // first we have to delete the Images in the vector since the automatic deallocation of vector will just delete the pointers themselves, and not call the destructors of the images
    if (max < stickers.size()) {
        while (max < stickers.size()) {
            removeSticker(stickers.size() - 1); // remove last element
        }
    }

    maxStickers = max;
}

int StickerSheet::addSticker (Image &sticker, unsigned x, unsigned y) {
    if (stickers.size() == maxStickers) {
        return -1;
    } else {
        stickers.push_back(&sticker);
        std::pair<unsigned, unsigned> tmp (x,y);
        coordinates.insert({&sticker, tmp});
        return stickers.size() - 1;
    }
}

bool StickerSheet::translate (unsigned index, unsigned x, unsigned y) {
    if (index > stickers.size() - 1) {
        return false;
    } else {
        Image* toEdit = stickers[index];
        coordinates[toEdit].first = x;
        coordinates[toEdit].second = y;
        return true;
    }
}

void StickerSheet::removeSticker (unsigned index) {
    delete stickers[index];
    coordinates.erase(stickers[index]);
    std::vector<Image*>::const_iterator iterator = stickers.begin();

    stickers.erase(iterator + index);
}

Image* StickerSheet::getSticker (unsigned index) {
    return stickers[index];
}

Image StickerSheet::render () const {
    // creating base layer
    Image toReturn = *baseLayer;
    for (unsigned i = 0; i < stickers.size(); i++) {
        // for each sticker I have to set up starting coordinates
        Image* toAdd = stickers[i];
        unsigned startingX = coordinates.at(toAdd).first;
        unsigned startingY = coordinates.at(toAdd).second;

        // will have to check this, idea is to resize if any sticker will extend past the boundary
        if (startingX + toAdd->width() > toReturn.width()) {
            if (startingY + toAdd->height() > toReturn.height()) {
                toReturn.resize(startingX + toAdd->width(), startingY + toAdd->height());
            } else {
                toReturn.resize(startingX + toAdd->width(), toReturn.height());
            }
        } else if (startingY + toAdd->height() > toReturn.height()) {
            toReturn.resize(toReturn.width(), startingY + toAdd->height());
        }

        // iterate over each pixel in sticker and add it to image toReturn if alpha > 0
        for (unsigned x = 0; x < toAdd->width(); x++) {
            for (unsigned y = 0; y < toAdd->height(); y++) {
                HSLAPixel& pixelToAdd = toAdd->getPixel(x,y);
                if (pixelToAdd.a > 0) {
                    toReturn.getPixel(startingX + x, startingY + y) = pixelToAdd;
                } 
            }
        }
    }

    return toReturn;
}

// THE GETTERS THAT I WROTE ARE BELOW

const Image* StickerSheet::getBaseLayer() const {
    return baseLayer;
}

std::vector<Image*> StickerSheet::getStickers() const {
    return stickers;
}

std::map<Image*, std::pair<unsigned, unsigned>> StickerSheet::getCoordinates() const {
    return coordinates;
}

unsigned StickerSheet::getMaxStickers() const {
    return maxStickers;
}