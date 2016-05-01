/*---------------------------------------------------------------------------------
# What  I listened to:
-- We Lost The Sea - Departure Songs (April 30th, 2016)

# Basic RTS
In this example we learn how to use the stylus to select a house and have a menu pop up. In Part 2, we will use this menu to select units to create.
-- John Riselvato ( April 28th, 2016 )
find me at: @jdriselvato

built with: Nintendo DS rom tool 1.50.3 - Dec 12 2015

Things to know:
---------------------------------------------------------------------------------*/
#include <nds.h>
#include <spritesheet.h>

typedef struct {
	int x, y, state; // x/y lcoation and sprite walk state
	u16* gfx; // oam GFX
	u8* gfx_frame;
} Character;

enum SpriteState { WALK_DOWN = 0, WALK_UP = 1, WALK_LEFT = 2, WALK_RIGHT = 3 }; // states for walking

typedef struct {
	u16* gfx;
	u8* gfx_frame;
	int x, y;
} Gem;

void characterMovement(Character * character);
void generateGem(Gem * gem_sprite);

int main(int argc, char** argv) {
	Character character = {20, 20}; // set the initial x, y location of the sprite
	Gem gem_sprite = {0, 0}; // add the gem to the screen

	// Initialize the top screen engine
	videoSetModeSub(MODE_0_2D);
	vramSetBankD(VRAM_D_SUB_SPRITE);

	oamInit(&oamSub, SpriteMapping_1D_128, false);

	// Set up the Character sprite
	character.gfx = oamAllocateGfx(&oamSub, SpriteSize_16x16, SpriteColorFormat_256Color);
	character.gfx_frame = (u8*)spritesheetTiles; // makes a reference to character16x16Tiles from character16x16.h
	dmaCopy(spritesheetPal, SPRITE_PALETTE, 512);

	// Set up the Gem sprite
	gem_sprite.gfx = oamAllocateGfx(&oamSub, SpriteSize_16x16, SpriteColorFormat_256Color);
	gem_sprite.gfx_frame = (u8*)spritesheetTiles;

	while(1) {
		characterMovement(&character);
		generateGem(&gem_sprite);

		swiWaitForVBlank();
		oamUpdate(&oamSub);
	}
	return 0;
}

/*---------------------------------------------------------------------------------
Code for Character
---------------------------------------------------------------------------------*/
void characterMovement(Character * character) {
	scanKeys();
	int keys = keysHeld();

	if (keys & KEY_RIGHT) {
		character->state = WALK_RIGHT;
		character->x++;
	} else if (keys & KEY_LEFT) {
		character->state = WALK_LEFT;
		character->x--;
	} else if (keys & KEY_DOWN) {
		character->state = WALK_DOWN;
		character->y++;
	} else if (keys & KEY_UP) {
		character->state = WALK_UP;
		character->y--;
	}

	int frame = character->state;
	u8* offset = character->gfx_frame + frame * 16*16;
	dmaCopy(offset, character->gfx, 16*16);

	oamSet(&oamSub,
		0, // oam entry id
		character->x, character->y, // x, y location
		0, 15, // priority, palette
		SpriteSize_16x16,
		SpriteColorFormat_256Color,
		character->gfx, // the oam gfx
		-1, false, false, false, false, false);
}

/*---------------------------------------------------------------------------------
Code for generating the gem
---------------------------------------------------------------------------------*/
void generateGem(Gem * gem_sprite) {
	u8* offset = gem_sprite->gfx_frame + 4 * 16*16;
	dmaCopy(offset, gem_sprite->gfx, 16*16);

	oamSet(&oamSub,
		1, // oam entry id
		gem_sprite->x, gem_sprite->y, // x, y location
		0, 15, // priority, palette
		SpriteSize_16x16,
		SpriteColorFormat_256Color,
		gem_sprite->gfx, // the oam gfx
		-1, false, false, false, false, false);
}