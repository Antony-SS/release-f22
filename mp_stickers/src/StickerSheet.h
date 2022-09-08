/**
 * @file StickerSheet.h
 * Contains your declaration of the interface for the StickerSheet class.
 */
#pragma once

#include "Image.h"
#include <vector>
#include <map>

class StickerSheet {
    public:

    StickerSheet (const Image &picture, unsigned max);

    StickerSheet (const StickerSheet &other);

    const StickerSheet & operator= (const StickerSheet& other);

    ~StickerSheet ();

    void changeMaxStickers (unsigned max);

    int addSticker (Image &sticker, unsigned x, unsigned y);

    bool translate (unsigned index, unsigned x, unsigned y);

    void removeSticker (unsigned index);

    Image* getSticker (unsigned index);

    const Image* getBaseLayer() const;

    std::vector<Image*> getStickers() const;

    unsigned getMaxStickers() const;

    std::map<Image*, std::pair<unsigned, unsigned>> getCoordinates() const;

    Image render () const;

    private:
    std::vector<Image*> stickers;
    std::map<Image*, std::pair<unsigned, unsigned>> coordinates;
    unsigned maxStickers;
    const Image* baseLayer;

    void _copy(const StickerSheet& other);
};