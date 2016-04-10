
@{{BLOCK(character16x16)

@=======================================================================
@
@	character16x16, 64x16@8, 
@	+ palette 256 entries, not compressed
@	+ 16 tiles Metatiled by 2x2 not compressed
@	Total size: 512 + 1024 = 1536
@
@	Time-stamp: 2016-04-10, 01:29:24
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.13
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global character16x16Tiles		@ 1024 unsigned chars
	.hidden character16x16Tiles
character16x16Tiles:
	.word 0x00000000,0x00000000,0x00000000,0x03030100,0x00000000,0x00000003,0x00000000,0x02020203
	.word 0x03000000,0x02020000,0x03000000,0x02020800,0x03000000,0x06020002,0x00000000,0x02020002
	.word 0x00000000,0x00000000,0x00000303,0x00000000,0x00000000,0x00000000,0x03020200,0x00000000
	.word 0x00000202,0x00000003,0x00080202,0x00000003,0x02000206,0x00000003,0x02000202,0x00000000
	.word 0x00000000,0x02020202,0x00000000,0x02020000,0x00000000,0x00000900,0x00000000,0x04040400
	.word 0x00000000,0x03070400,0x00000000,0x05050500,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x02020202,0x00000000,0x00000202,0x00000000,0x00090000,0x00000000,0x00040404,0x00000000
	.word 0x00040703,0x00000000,0x00050505,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x03010000,0x00000000,0x00000000,0x00000000,0x03030301
	.word 0x00000000,0x03030000,0x00000000,0x03010000,0x00000000,0x01000000,0x00000000,0x00000002
	.word 0x00000000,0x00000000,0x00000303,0x00000000,0x00030000,0x00000000,0x03000000,0x00000000
	.word 0x00000003,0x00000003,0x00000303,0x00000003,0x00000303,0x00000000,0x02000000,0x00000000
	.word 0x00000000,0x02020202,0x00000000,0x02020000,0x00000000,0x00000400,0x00000000,0x04040400
	.word 0x00000000,0x04040400,0x00000000,0x05050500,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x02020202,0x00000000,0x00000202,0x00000000,0x00040000,0x00000000,0x00040404,0x00000000
	.word 0x00040404,0x00000000,0x00050505,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x03010000,0x00000000,0x00000200,0x00000000,0x00000202
	.word 0x02000000,0x00020000,0x02000000,0x02020008,0x06000000,0x02020002,0x00000000,0x02020202
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000300,0x00000000,0x00030100,0x00000000
	.word 0x03010000,0x00000000,0x03030000,0x00000000,0x00030300,0x00000000,0x02000000,0x00000000
	.word 0x00000000,0x02020202,0x00000000,0x02020000,0x00000000,0x00000900,0x00000000,0x04040400
	.word 0x00000000,0x04070300,0x00000000,0x05050500,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x02020202,0x00000000,0x00000202,0x00000000,0x00040000,0x00000000,0x00040404,0x00000000
	.word 0x00040404,0x00000000,0x00050505,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00030000,0x00000000,0x00010300
	.word 0x00000000,0x00000103,0x00000000,0x00000303,0x00000000,0x00030300,0x00000000,0x00000002
	.word 0x00000000,0x00000000,0x00000103,0x00000000,0x00020000,0x00000000,0x02020000,0x00000000
	.word 0x00000200,0x00000002,0x08000202,0x00000002,0x02000202,0x00000006,0x02020202,0x00000000
	.word 0x00000000,0x02020202,0x00000000,0x02020000,0x00000000,0x00000400,0x00000000,0x04040400
	.word 0x00000000,0x04040400,0x00000000,0x05050500,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x02020202,0x00000000,0x00000202,0x00000000,0x00090000,0x00000000,0x00040404,0x00000000
	.word 0x00030704,0x00000000,0x00050505,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.section .rodata
	.align	2
	.global character16x16Pal		@ 512 unsigned chars
	.hidden character16x16Pal
character16x16Pal:
	.hword 0x0000,0x318C,0x333F,0x2529,0x7E00,0x6739,0x001F,0x7FE0
	.hword 0x7FFF,0x7F2C,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(character16x16)
