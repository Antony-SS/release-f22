add_test( [==[Image lighten() lightens pixels by 0.1]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image lighten() lightens pixels by 0.1]==]  )
set_tests_properties( [==[Image lighten() lightens pixels by 0.1]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image lighten() does not lighten a pixel above 1.0]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image lighten() does not lighten a pixel above 1.0]==]  )
set_tests_properties( [==[Image lighten() does not lighten a pixel above 1.0]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image darken(0.2) darkens pixels by 0.2]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image darken(0.2) darkens pixels by 0.2]==]  )
set_tests_properties( [==[Image darken(0.2) darkens pixels by 0.2]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image darken(0.2) does not darken a pixel below 0.0]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image darken(0.2) does not darken a pixel below 0.0]==]  )
set_tests_properties( [==[Image darken(0.2) does not darken a pixel below 0.0]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image saturate() saturates a pixels by 0.1]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image saturate() saturates a pixels by 0.1]==]  )
set_tests_properties( [==[Image saturate() saturates a pixels by 0.1]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image rotateColor(double) rotates the color]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image rotateColor(double) rotates the color]==]  )
set_tests_properties( [==[Image rotateColor(double) rotates the color]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image rotateColor(double) keeps the hue in the range 0..360]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image rotateColor(double) keeps the hue in the range 0..360]==]  )
set_tests_properties( [==[Image rotateColor(double) keeps the hue in the range 0..360]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image scale(2.0) results in the correct width/height]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image scale(2.0) results in the correct width/height]==]  )
set_tests_properties( [==[Image scale(2.0) results in the correct width/height]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image scale(0.5) results in the correct width/height]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image scale(0.5) results in the correct width/height]==]  )
set_tests_properties( [==[Image scale(0.5) results in the correct width/height]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image scale(2) scales pixel data in a reasonable way]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image scale(2) scales pixel data in a reasonable way]==]  )
set_tests_properties( [==[Image scale(2) scales pixel data in a reasonable way]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image scale(0.5) scales pixel data in a reasonable way]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image scale(0.5) scales pixel data in a reasonable way]==]  )
set_tests_properties( [==[Image scale(0.5) scales pixel data in a reasonable way]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[Image works for manual scaling]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[Image works for manual scaling]==]  )
set_tests_properties( [==[Image works for manual scaling]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[A basic StickerSheet works]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[A basic StickerSheet works]==]  )
set_tests_properties( [==[A basic StickerSheet works]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove the last sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove the last sticker]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove the last sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove the first sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove the first sticker]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove the first sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove all stickers]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove all stickers]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove all stickers]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns the sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::getSticker() returns the sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns the sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::getSticker() returns NULL for a removed sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::translate() translates a sticker's location]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::translate() translates a sticker's location]==]  )
set_tests_properties( [==[StickerSheet::translate() translates a sticker's location]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet::translate() returns false for a non-existant sticker]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet::translate() returns false for a non-existant sticker]==]  )
set_tests_properties( [==[StickerSheet::translate() returns false for a non-existant sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[A complex StickerSheet is correct]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[A complex StickerSheet is correct]==]  )
set_tests_properties( [==[A complex StickerSheet is correct]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet's copy constructor makes an independent copy]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet's copy constructor makes an independent copy]==]  )
set_tests_properties( [==[StickerSheet's copy constructor makes an independent copy]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[StickerSheet's assignment operator makes an independent copy]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[StickerSheet's assignment operator makes an independent copy]==]  )
set_tests_properties( [==[StickerSheet's assignment operator makes an independent copy]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
add_test( [==[A Stickersheet with stickers placed beyond base image boundaries works]==] /workspaces/CS225/release-f22/mp_stickers/build/test [==[A Stickersheet with stickers placed beyond base image boundaries works]==]  )
set_tests_properties( [==[A Stickersheet with stickers placed beyond base image boundaries works]==] PROPERTIES WORKING_DIRECTORY /workspaces/CS225/release-f22/mp_stickers/build)
set( test_TESTS [==[Image lighten() lightens pixels by 0.1]==] [==[Image lighten() does not lighten a pixel above 1.0]==] [==[Image darken(0.2) darkens pixels by 0.2]==] [==[Image darken(0.2) does not darken a pixel below 0.0]==] [==[Image saturate() saturates a pixels by 0.1]==] [==[Image rotateColor(double) rotates the color]==] [==[Image rotateColor(double) keeps the hue in the range 0..360]==] [==[Image scale(2.0) results in the correct width/height]==] [==[Image scale(0.5) results in the correct width/height]==] [==[Image scale(2) scales pixel data in a reasonable way]==] [==[Image scale(0.5) scales pixel data in a reasonable way]==] [==[Image works for manual scaling]==] [==[A basic StickerSheet works]==] [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] [==[StickerSheet::removeSticker() can remove the last sticker]==] [==[StickerSheet::removeSticker() can remove the first sticker]==] [==[StickerSheet::removeSticker() can remove all stickers]==] [==[StickerSheet::getSticker() returns the sticker]==] [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] [==[StickerSheet::translate() translates a sticker's location]==] [==[StickerSheet::translate() returns false for a non-existant sticker]==] [==[A complex StickerSheet is correct]==] [==[StickerSheet's copy constructor makes an independent copy]==] [==[StickerSheet's assignment operator makes an independent copy]==] [==[A Stickersheet with stickers placed beyond base image boundaries works]==])
