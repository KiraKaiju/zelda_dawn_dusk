//Zelda Expansion Disk
//By LuigiBlood

//Uses ARM9 bass

//Memory Patch for NTSC 1.0
//Load everything into memory first, then patch memory

//Format:
//rrrrrrrr Tsssssss dddddddd ...
//r = RAM address, T = Type, s = Size in bytes (aligned to 4), d = Data (size)
//repeat until r = 0
//T = 0, then copy (rrrrrrrr 0sssssss dddddddd ...)
//T = 1, then fill (rrrrrrrr 1sssssss 000000dd) 

EZLJ_PATCH0:
//---code (File)
//Entrance Table
n64dd_PatchCopy((DDHOOK_CODE0 + 0xE8BF0), EZLJ_ENTRANCE_TABLE.size)
insert EZLJ_ENTRANCE_TABLE,"../other/code_entrance_table.bin"

//Entrance Cutscene Table
n64dd_PatchCopy((DDHOOK_CODE0 + 0xDEC64), EZLJ_ENTRANCE_CUTSCENE_TABLE.size)
insert EZLJ_ENTRANCE_CUTSCENE_TABLE,"../other/code_entrance_cutscene_table.bin"

//Tunic Colors
n64dd_PatchCopy((DDHOOK_CODE0 + 0xE6A38), 8)
dw 0x4C971446, 0x2640003C

//---Setup Link (Child) Optimized (by CrookedPoe)
include "../patch/misc-opti_link_child.0.patch"

include "../patch/misc-getitem.0.patch"

//Force use Hylian Shield like Adult Link
n64dd_PatchCopy((DDHOOK_CODE0 + 0x68400), 4)
nop

n64dd_PatchEnd()
EZLJ_PATCH0_END: